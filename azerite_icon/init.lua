aura_env.ai = aura_env.ai or LibStub("AceAddon-3.0"):GetAddon("AzeriteIcon", true) or LibStub("AceAddon-3.0"):NewAddon("AzeriteIcon", "AceEvent-3.0", "AceHook-3.0")
aura_env.ai.config = aura_env.config

local growth = {"TOP", "BOTTOM", "LEFT", "RIGHT"}

local growthAnchors = {
    ["TOP"] = "BOTTOM",
    ["BOTTOM"] = "TOP",
    ["LEFT"] = "RIGHT",
    ["RIGHT"] = "LEFT",
}

local anchors = {"TOP", "BOTTOM", "LEFT", "RIGHT", "CENTER", "TOPLEFT", "TOPRIGHT", "BOTTOMLEFT", "BOTTOMRIGHT"}

function aura_env.ai:createButton(button, j)
    local azerite = button.azerite[j]
    if not azerite then
        azerite = CreateFrame("Frame", "$parent."..j, button.azerite)
        azerite.tex = azerite:CreateTexture("$parent."..j.."tex", "OVERLAY", nil, button.azerite)
        azerite.tex:SetAllPoints()
        azerite:SetScript("OnEnter", function(self)
            if self.enableTooltip then
                GameTooltip:SetOwner(UIParent, "ANCHOR_CURSOR")
                -- GameTooltip:SetHyperlink(GetSpellLink(azerite.spellid))
                GameTooltip:AddDoubleLine(self.name, self.spellid, 1, 1, 1, 1, 1, 1)
                GameTooltip:AddLine(self.description, nil, nil, nil, true)
                GameTooltip:Show()
                self.tooltipShown = true
            end
        end)
        azerite:SetScript("OnLeave", function(self)
            if self.tooltipShown then
                GameTooltip:Hide()
                self.tooltipShown = false
            end
        end)
        azerite:EnableMouse(true)

        azerite.overlay = azerite:CreateTexture(nil, "ARTWORK", nil, 7)
        azerite.overlay:SetTexture([[Interface\TargetingFrame\UI-TargetingFrame-Stealable]])
        azerite.overlay:SetVertexColor(0.7,0.7,0.7,0.8)
        azerite.overlay:SetPoint("TOPLEFT", azerite, -3, 3)
        azerite.overlay:SetPoint("BOTTOMRIGHT", azerite, 3, -3)
        azerite.overlay:SetBlendMode("ADD")

        button.azerite[j] = azerite
    else
        azerite:Show()
        azerite.overlay:Show()
    end

    -- always set point and size in case config changed
    local size = self.config.size
    local growthTo = growth[self.config.growth]
    azerite:ClearAllPoints()
    if j == 1 then
        azerite:SetPoint(growthAnchors[growthTo], button.azerite, growthAnchors[growthTo])
    else
        azerite:SetPoint(growthAnchors[growthTo], button.azerite[j-1], growthTo)
    end
    azerite:SetSize(size, size)
    azerite.enableTooltip = self.config.enableTooltip
end

function aura_env.ai:Show(button)
    local loc = ItemLocation:CreateFromEquipmentSlot(button:GetID())

    if not C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItem(loc) then
        self:Hide(button)
        return
    end

    if not button.azerite then
        button.azerite = CreateFrame("Frame", "$parent.ai", button);
    else
        button.azerite:Show()
    end
    -- always set point and size in case config changed
    button.azerite:SetPoint(anchors[self.config.anchorFrom], button, anchors[self.config.anchorTo])
    button.azerite:SetSize(self.config.size * self.config.rings, self.config.size * self.config.rings)

    local allTierInfo = C_AzeriteEmpoweredItem.GetAllTierInfo(loc)
    if not allTierInfo[1].azeritePowerIDs[1] then return end

    local noneSelected = true

    for j=1,self.config.rings do
        local tierInfo = allTierInfo[j]
        if not tierInfo then break end

        local azeritePowerID = tierInfo.azeritePowerIDs[1]

        if button.azerite[j] then
            button.azerite[j]:Hide()
            button.azerite[j].overlay:Hide()
        end

        for i, powerID in pairs(tierInfo.azeritePowerIDs) do
            local powerInfo = C_AzeriteEmpoweredItem.GetPowerInfo(powerID)
            local powerName, _, icon = GetSpellInfo(powerInfo.spellID)

            if C_AzeriteEmpoweredItem.IsPowerSelected(loc, powerID) then
                noneSelected = false
                self:createButton(button, j)
                local azerite = button.azerite[j]
                azerite.tex:SetTexture(icon)
                azerite.name = powerName
                azerite.spellid = powerInfo.spellID
                azerite.description = GetSpellDescription(azerite.spellid)
                break
            end
        end
    end

    if noneSelected	then button.azerite:Hide() end
end

function aura_env.ai:Hide(button)
    if button.azerite then
        button.azerite:Hide()
    end
end

function aura_env.ai:PaperDollItemSlotButton_Update(button)
    local id = button:GetID()
    if not (id == 1 or id == 3 or id == 5) then
        self:Hide(button)
        return
    end

    local textureName = GetInventoryItemTexture("player", id)
    if not textureName then
        self:Hide(button)
        return
    end

    self:Show(button)
end

if not aura_env.ai:IsHooked('PaperDollItemSlotButton_Update') then
    aura_env.ai:SecureHook('PaperDollItemSlotButton_Update')
end
