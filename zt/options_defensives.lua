{
    {
        ["subOptions"] = {
            {
                ["type"] = "description",
                ["text"] = "Note: You can adjust other options like icon size in the Display tab",
                ["fontSize"] = "medium",
                ["width"] = 2,
            }, -- [1]
            {
                ["type"] = "description",
                ["text"] = " ",
                ["fontSize"] = "medium",
                ["width"] = 2,
            }, -- [2]
            {
                ["desc"] = "Direction the icons grow towards, relative to the raid frame",
                ["type"] = "select",
                ["default"] = 1,
                ["key"] = "growDirection",
                ["name"] = "Grow Direction",
                ["useDesc"] = true,
                ["values"] = {
                    "Left", -- [1]
                    "Right", -- [2]
                    "Top", -- [3]
                    "Bottom", -- [4]
                },
                ["width"] = 1,
            }, -- [3]
            {
                ["softMin"] = 0,
                ["type"] = "range",
                ["bigStep"] = 1,
                ["max"] = 100,
                ["step"] = 1,
                ["width"] = 1,
                ["min"] = -100,
                ["key"] = "spacing",
                ["desc"] = "Amount of pixels between icons",
                ["softMax"] = 20,
                ["useDesc"] = true,
                ["name"] = "Spacing",
                ["default"] = 2,
            }, -- [4]
            {
                ["softMin"] = -25,
                ["type"] = "range",
                ["bigStep"] = 1,
                ["max"] = 500,
                ["step"] = 1,
                ["width"] = 1,
                ["min"] = -500,
                ["key"] = "xOffset",
                ["desc"] = "Amount of pixels the display is offset horizontally",
                ["softMax"] = 25,
                ["useDesc"] = true,
                ["name"] = "X-Offset",
                ["default"] = 0,
            }, -- [5]
            {
                ["softMin"] = -25,
                ["type"] = "range",
                ["bigStep"] = 1,
                ["max"] = 500,
                ["step"] = 1,
                ["width"] = 1,
                ["min"] = -500,
                ["key"] = "yOffset",
                ["desc"] = "Amount of pixels the display is offset vertically",
                ["softMax"] = 25,
                ["useDesc"] = true,
                ["name"] = "Y-Offset",
                ["default"] = 0,
            }, -- [6]
            {
                ["type"] = "description",
                ["text"] = " ",
                ["fontSize"] = "medium",
                ["width"] = 2,
            }, -- [7]
            {
                ["type"] = "toggle",
                ["default"] = false,
                ["name"] = "Force Horizontal",
                ["useDesc"] = false,
                ["key"] = "preserveRows",
                ["width"] = 0.5,
            }, -- [8]
        },
        ["type"] = "group",
        ["useDesc"] = false,
        ["width"] = 2,
        ["useCollapse"] = true,
        ["key"] = "display",
        ["name"] = "Display Configuration",
        ["limitType"] = "none",
        ["groupType"] = "simple",
        ["collapse"] = true,
        ["size"] = 10,
    }, -- [1]
    {
        ["subOptions"] = {
            {
                ["subOptions"] = {
                    {
                        ["type"] = "description",
                        ["text"] = "Registration - By Type",
                        ["fontSize"] = "large",
                        ["width"] = 2,
                    }, -- [1]
                    {
                        ["type"] = "description",
                        ["text"] = "Coarse-grained registration for spells according to their type",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [2]
                    {
                        ["type"] = "description",
                        ["text"] = " ",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [3]
                    {
                        ["type"] = "description",
                        ["text"] = "'Register? (Reg)' - Whether to register for spells of this type",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [4]
                    {
                        ["type"] = "description",
                        ["text"] = "'Show Own? (Own)' - Whether to show your own spells of this type",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [5]
                    {
                        ["type"] = "description",
                        ["text"] = "'Row (Row)' - Which row (1, 2 or 3) for displaying spells of this type",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [6]
                    {
                        ["type"] = "description",
                        ["text"] = " ",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [7]
                    {
                        ["type"] = "description",
                        ["text"] = "Type",
                        ["fontSize"] = "large",
                        ["width"] = 0.35,
                    }, -- [8]
                    {
                        ["type"] = "description",
                        ["text"] = "Reg",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [9]
                    {
                        ["type"] = "description",
                        ["text"] = "Own",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [10]
                    {
                        ["type"] = "description",
                        ["text"] = "Row",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [11]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [12]
                    {
                        ["type"] = "description",
                        ["text"] = "Type",
                        ["fontSize"] = "large",
                        ["width"] = 0.35,
                    }, -- [13]
                    {
                        ["type"] = "description",
                        ["text"] = "Reg",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [14]
                    {
                        ["type"] = "description",
                        ["text"] = "Own",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [15]
                    {
                        ["type"] = "description",
                        ["text"] = "Row",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [16]
                    {
                        ["type"] = "description",
                        ["text"] = "DAMAGE",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [17]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledDAMAGE",
                        ["width"] = 0.2,
                    }, -- [18]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnDAMAGE",
                        ["width"] = 0.2,
                    }, -- [19]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowDAMAGE",
                        ["name"] = "",
                        ["default"] = 1,
                    }, -- [20]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [21]
                    {
                        ["type"] = "description",
                        ["text"] = "DEFMDISPEL",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [22]
                    {
                        ["type"] = "toggle",
                        ["default"] = false,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledDEFMDISPEL",
                        ["width"] = 0.2,
                    }, -- [23]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnDEFMDISPEL",
                        ["width"] = 0.2,
                    }, -- [24]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowDEFMDISPEL",
                        ["name"] = "",
                        ["default"] = 1,
                    }, -- [25]
                    {
                        ["type"] = "description",
                        ["text"] = "DISPEL",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [26]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledDISPEL",
                        ["width"] = 0.2,
                    }, -- [27]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnDISPEL",
                        ["width"] = 0.2,
                    }, -- [28]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowDISPEL",
                        ["name"] = "",
                        ["default"] = 2,
                    }, -- [29]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [30]
                    {
                        ["type"] = "description",
                        ["text"] = "EXTERNAL",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [31]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledEXTERNAL",
                        ["width"] = 0.2,
                    }, -- [32]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnEXTERNAL",
                        ["width"] = 0.2,
                    }, -- [33]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowEXTERNAL",
                        ["name"] = "",
                        ["default"] = 2,
                    }, -- [34]
                    {
                        ["type"] = "description",
                        ["text"] = "HARDCC",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [35]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledHARDCC",
                        ["width"] = 0.2,
                    }, -- [36]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnHARDCC",
                        ["width"] = 0.2,
                    }, -- [37]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowHARDCC",
                        ["name"] = "",
                        ["default"] = 2,
                    }, -- [38]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [39]
                    {
                        ["type"] = "description",
                        ["text"] = "HEALING",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [40]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledHEALING",
                        ["width"] = 0.2,
                    }, -- [41]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnHEALING",
                        ["width"] = 0.2,
                    }, -- [42]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowHEALING",
                        ["name"] = "",
                        ["default"] = 1,
                    }, -- [43]
                    {
                        ["type"] = "description",
                        ["text"] = "IMMUNITY",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [44]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledIMMUNITY",
                        ["width"] = 0.2,
                    }, -- [45]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnIMMUNITY",
                        ["width"] = 0.2,
                    }, -- [46]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowIMMUNITY",
                        ["name"] = "",
                        ["default"] = 1,
                    }, -- [47]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [48]
                    {
                        ["type"] = "description",
                        ["text"] = "INTERRUPT",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [49]
                    {
                        ["type"] = "toggle",
                        ["default"] = false,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledINTERRUPT",
                        ["width"] = 0.2,
                    }, -- [50]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnINTERRUPT",
                        ["width"] = 0.2,
                    }, -- [51]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowINTERRUPT",
                        ["name"] = "",
                        ["default"] = 1,
                    }, -- [52]
                    {
                        ["type"] = "description",
                        ["text"] = "PERSONAL",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [53]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledPERSONAL",
                        ["width"] = 0.2,
                    }, -- [54]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnPERSONAL",
                        ["width"] = 0.2,
                    }, -- [55]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowPERSONAL",
                        ["name"] = "",
                        ["default"] = 1,
                    }, -- [56]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [57]
                    {
                        ["type"] = "description",
                        ["text"] = "RAIDCD",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [58]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledRAIDCD",
                        ["width"] = 0.2,
                    }, -- [59]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnRAIDCD",
                        ["width"] = 0.2,
                    }, -- [60]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowRAIDCD",
                        ["name"] = "",
                        ["default"] = 2,
                    }, -- [61]
                    {
                        ["type"] = "description",
                        ["text"] = "SOFTCC",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [62]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledSOFTCC",
                        ["width"] = 0.2,
                    }, -- [63]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnSOFTCC",
                        ["width"] = 0.2,
                    }, -- [64]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowSOFTCC",
                        ["name"] = "",
                        ["default"] = 2,
                    }, -- [65]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [66]
                    {
                        ["type"] = "description",
                        ["text"] = "STHARDCC",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [67]
                    {
                        ["type"] = "toggle",
                        ["default"] = false,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledSTHARDCC",
                        ["width"] = 0.2,
                    }, -- [68]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnSTHARDCC",
                        ["width"] = 0.2,
                    }, -- [69]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowSTHARDCC",
                        ["name"] = "",
                        ["default"] = 1,
                    }, -- [70]
                    {
                        ["type"] = "description",
                        ["text"] = "STSOFTCC",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [71]
                    {
                        ["type"] = "toggle",
                        ["default"] = false,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledSTSOFTCC",
                        ["width"] = 0.2,
                    }, -- [72]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnSTSOFTCC",
                        ["width"] = 0.2,
                    }, -- [73]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowSTSOFTCC",
                        ["name"] = "",
                        ["default"] = 1,
                    }, -- [74]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [75]
                    {
                        ["type"] = "description",
                        ["text"] = "TANK",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [76]
                    {
                        ["type"] = "toggle",
                        ["default"] = false,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledTANK",
                        ["width"] = 0.2,
                    }, -- [77]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnTANK",
                        ["width"] = 0.2,
                    }, -- [78]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowTANK",
                        ["name"] = "",
                        ["default"] = 1,
                    }, -- [79]
                    {
                        ["type"] = "description",
                        ["text"] = "UTILITY",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [80]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "enabledUTILITY",
                        ["width"] = 0.2,
                    }, -- [81]
                    {
                        ["type"] = "toggle",
                        ["default"] = true,
                        ["name"] = "",
                        ["useDesc"] = false,
                        ["key"] = "showOwnUTILITY",
                        ["width"] = 0.2,
                    }, -- [82]
                    {
                        ["type"] = "number",
                        ["useDesc"] = false,
                        ["max"] = 3,
                        ["step"] = 1,
                        ["width"] = 0.2,
                        ["min"] = 1,
                        ["key"] = "rowUTILITY",
                        ["name"] = "",
                        ["default"] = 2,
                    }, -- [83]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [84]
                },
                ["type"] = "group",
                ["useDesc"] = false,
                ["width"] = 2,
                ["useCollapse"] = true,
                ["name"] = "By Type",
                ["key"] = "type",
                ["limitType"] = "none",
                ["groupType"] = "simple",
                ["collapse"] = false,
                ["size"] = 10,
            }, -- [1]
            {
                ["type"] = "description",
                ["text"] = " ",
                ["fontSize"] = "medium",
                ["width"] = 2,
            }, -- [2]
            {
                ["subOptions"] = {
                    {
                        ["type"] = "description",
                        ["text"] = "Fine-grained registration for individual spells. If a given type is registered, these settings will instead be treated as a blacklist for that type.",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [1]
                    {
                        ["type"] = "description",
                        ["text"] = "Spells will be shown according to the row specified for their associated type in the \\\"Registration - By Type\\\" settings",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [2]
                    {
                        ["type"] = "description",
                        ["text"] = " ",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [3]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T2065580:0|t |cFFA330C9Fel Barrage|r",
                                ["useDesc"] = false,
                                ["key"] = "258925",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1247262:0|t |cFFA330C9Metamorphosis|r",
                                ["useDesc"] = false,
                                ["key"] = "191427",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236299:0|t |cFFA330C9Nemesis|r",
                                ["useDesc"] = false,
                                ["key"] = "206491",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1392565:0|t |cFFC41F3BApocalypse|r",
                                ["useDesc"] = false,
                                ["key"] = "275699",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237511:0|t |cFFC41F3BArmy of the Dead|r",
                                ["useDesc"] = false,
                                ["key"] = "42650",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1029007:0|t |cFFC41F3BBreath of Sindra|r",
                                ["useDesc"] = false,
                                ["key"] = "152279",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135372:0|t |cFFC41F3BEmpower Rune Wea|r",
                                ["useDesc"] = false,
                                ["key"] = "47568",
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T341980:0|t |cFFC41F3BFrostwyrm's Fury|r",
                                ["useDesc"] = false,
                                ["key"] = "279302",
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T458967:0|t |cFFC41F3BSummon Gargoyle|r",
                                ["useDesc"] = false,
                                ["key"] = "49206",
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136224:0|t |cFFC41F3BUnholy Frenzy|r",
                                ["useDesc"] = false,
                                ["key"] = "207289",
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236149:0|t |cFFFF7D0ABerserk|r",
                                ["useDesc"] = false,
                                ["key"] = "106951",
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136060:0|t |cFFFF7D0ACelestial Alignm|r",
                                ["useDesc"] = false,
                                ["key"] = "194223",
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132123:0|t |cFFFF7D0AFury of Elune|r",
                                ["useDesc"] = false,
                                ["key"] = "202770",
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Cho|r",
                                ["useDesc"] = false,
                                ["key"] = "102560",
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Kin|r",
                                ["useDesc"] = false,
                                ["key"] = "102543",
                                ["width"] = 0.5,
                            }, -- [15]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136074:0|t |cFFABD473Aspect of the Wi|r",
                                ["useDesc"] = false,
                                ["key"] = "193530",
                                ["width"] = 0.5,
                            }, -- [16]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132127:0|t |cFFABD473Bestial Wrath|r",
                                ["useDesc"] = false,
                                ["key"] = "19574",
                                ["width"] = 0.5,
                            }, -- [17]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T2065565:0|t |cFFABD473Coordinated Assa|r",
                                ["useDesc"] = false,
                                ["key"] = "266779",
                                ["width"] = 0.5,
                            }, -- [18]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T461112:0|t |cFFABD473Stampede|r",
                                ["useDesc"] = false,
                                ["key"] = "201430",
                                ["width"] = 0.5,
                            }, -- [19]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132329:0|t |cFFABD473Trueshot|r",
                                ["useDesc"] = false,
                                ["key"] = "288613",
                                ["width"] = 0.5,
                            }, -- [20]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136048:0|t |cFF40C7EBArcane Power|r",
                                ["useDesc"] = false,
                                ["key"] = "12042",
                                ["width"] = 0.5,
                            }, -- [21]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135824:0|t |cFF40C7EBCombustion|r",
                                ["useDesc"] = false,
                                ["key"] = "190319",
                                ["width"] = 0.5,
                            }, -- [22]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135838:0|t |cFF40C7EBIcy Veins|r",
                                ["useDesc"] = false,
                                ["key"] = "12472",
                                ["width"] = 0.5,
                            }, -- [23]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135994:0|t |cFF40C7EBMirror Image|r",
                                ["useDesc"] = false,
                                ["key"] = "55342",
                                ["width"] = 0.5,
                            }, -- [24]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T620832:0|t |cFF00FF96Invoke Xuen, the|r",
                                ["useDesc"] = false,
                                ["key"] = "123904",
                                ["width"] = 0.5,
                            }, -- [25]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T988197:0|t |cFF00FF96Serenity|r",
                                ["useDesc"] = false,
                                ["key"] = "152173",
                                ["width"] = 0.5,
                            }, -- [26]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136038:0|t |cFF00FF96Storm, Earth, an|r",
                                ["useDesc"] = false,
                                ["key"] = "137639",
                                ["width"] = 0.5,
                            }, -- [27]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T606552:0|t |cFF00FF96Touch of Death|r",
                                ["useDesc"] = false,
                                ["key"] = "115080",
                                ["width"] = 0.5,
                            }, -- [28]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135875:0|t |cFFF58CBAAvenging Wrath|r",
                                ["useDesc"] = false,
                                ["key"] = "31884",
                                ["width"] = 0.5,
                            }, -- [29]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236262:0|t |cFFF58CBACrusade|r",
                                ["useDesc"] = false,
                                ["key"] = "231895",
                                ["width"] = 0.5,
                            }, -- [30]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1030103:0|t |cFFF58CBASeraphim|r",
                                ["useDesc"] = false,
                                ["key"] = "152262",
                                ["width"] = 0.5,
                            }, -- [31]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1711336:0|t |cFFFFFFFFDark Ascension|r",
                                ["useDesc"] = false,
                                ["key"] = "280711",
                                ["width"] = 0.5,
                            }, -- [32]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T254090:0|t |cFFFFFFFFSurrender to Mad|r",
                                ["useDesc"] = false,
                                ["key"] = "193223",
                                ["width"] = 0.5,
                            }, -- [33]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136206:0|t |cFFFFF569Adrenaline Rush|r",
                                ["useDesc"] = false,
                                ["key"] = "13750",
                                ["width"] = 0.5,
                            }, -- [34]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236277:0|t |cFFFFF569Killing Spree|r",
                                ["useDesc"] = false,
                                ["key"] = "51690",
                                ["width"] = 0.5,
                            }, -- [35]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T376022:0|t |cFFFFF569Shadow Blades|r",
                                ["useDesc"] = false,
                                ["key"] = "121471",
                                ["width"] = 0.5,
                            }, -- [36]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T458726:0|t |cFFFFF569Vendetta|r",
                                ["useDesc"] = false,
                                ["key"] = "79140",
                                ["width"] = 0.5,
                            }, -- [37]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
                                ["useDesc"] = false,
                                ["key"] = "Ascendance",
                                ["width"] = 0.5,
                            }, -- [38]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237577:0|t |cFF0070DEFeral Spirit|r",
                                ["useDesc"] = false,
                                ["key"] = "51533",
                                ["width"] = 0.5,
                            }, -- [39]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T2065626:0|t |cFF0070DEStorm Elemental|r",
                                ["useDesc"] = false,
                                ["key"] = "192249",
                                ["width"] = 0.5,
                            }, -- [40]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T839977:0|t |cFF0070DEStormkeeper|r",
                                ["useDesc"] = false,
                                ["key"] = "191634",
                                ["width"] = 0.5,
                            }, -- [41]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T463286:0|t |cFF8787EDDark Soul: Insta|r",
                                ["useDesc"] = false,
                                ["key"] = "113858",
                                ["width"] = 0.5,
                            }, -- [42]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T463286:0|t |cFF8787EDDark Soul: Miser|r",
                                ["useDesc"] = false,
                                ["key"] = "113860",
                                ["width"] = 0.5,
                            }, -- [43]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T2065615:0|t |cFF8787EDNether Portal|r",
                                ["useDesc"] = false,
                                ["key"] = "267217",
                                ["width"] = 0.5,
                            }, -- [44]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1416161:0|t |cFF8787EDSummon Darkglare|r",
                                ["useDesc"] = false,
                                ["key"] = "205180",
                                ["width"] = 0.5,
                            }, -- [45]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T2065628:0|t |cFF8787EDSummon Demonic T|r",
                                ["useDesc"] = false,
                                ["key"] = "265187",
                                ["width"] = 0.5,
                            }, -- [46]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136219:0|t |cFF8787EDSummon Infernal|r",
                                ["useDesc"] = false,
                                ["key"] = "1122",
                                ["width"] = 0.5,
                            }, -- [47]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T613534:0|t |cFFC79C6EAvatar|r",
                                ["useDesc"] = false,
                                ["key"] = "107574",
                                ["width"] = 0.5,
                            }, -- [48]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236303:0|t |cFFC79C6EBladestorm|r",
                                ["useDesc"] = false,
                                ["key"] = "Bladestorm",
                                ["width"] = 0.5,
                            }, -- [49]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T458972:0|t |cFFC79C6ERecklessness|r",
                                ["useDesc"] = false,
                                ["key"] = "1719",
                                ["width"] = 0.5,
                            }, -- [50]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "DAMAGE",
                        ["key"] = "DAMAGE",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [4]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236288:0|t |cFFFF7D0ANature's Cure|r",
                                ["useDesc"] = false,
                                ["key"] = "88423",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T460692:0|t |cFF00FF96Detox|r",
                                ["useDesc"] = false,
                                ["key"] = "115450",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135949:0|t |cFFF58CBACleanse|r",
                                ["useDesc"] = false,
                                ["key"] = "4987",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135894:0|t |cFFFFFFFFPurify|r",
                                ["useDesc"] = false,
                                ["key"] = "527",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236288:0|t |cFF0070DEPurify Spirit|r",
                                ["useDesc"] = false,
                                ["key"] = "77130",
                                ["width"] = 0.5,
                            }, -- [5]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "DEFMDISPEL",
                        ["key"] = "DEFMDISPEL",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [5]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T828455:0|t |cFFA330C9Disrupt|r",
                                ["useDesc"] = false,
                                ["key"] = "278326",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132163:0|t |cFFFF7D0ASoothe|r",
                                ["useDesc"] = false,
                                ["key"] = "2908",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136222:0|t |cFFBBBBBBArcane Torrent|r",
                                ["useDesc"] = false,
                                ["key"] = "ArcaneTorrent",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135739:0|t |cFFFFFFFFMass Dispel|r",
                                ["useDesc"] = false,
                                ["key"] = "32375",
                                ["width"] = 0.5,
                            }, -- [4]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "DISPEL",
                        ["key"] = "DISPEL",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [6]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T572025:0|t |cFFFF7D0AIronbark|r",
                                ["useDesc"] = false,
                                ["key"] = "102342",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T627485:0|t |cFF00FF96Life Cocoon|r",
                                ["useDesc"] = false,
                                ["key"] = "116849",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135964:0|t |cFFF58CBABlessing of Prot|r",
                                ["useDesc"] = false,
                                ["key"] = "1022",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135966:0|t |cFFF58CBABlessing of Sacr|r",
                                ["useDesc"] = false,
                                ["key"] = "6940",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135880:0|t |cFFF58CBABlessing of Spel|r",
                                ["useDesc"] = false,
                                ["key"] = "204018",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237542:0|t |cFFFFFFFFGuardian Spirit|r",
                                ["useDesc"] = false,
                                ["key"] = "47788",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135936:0|t |cFFFFFFFFPain Supression|r",
                                ["useDesc"] = false,
                                ["key"] = "33206",
                                ["width"] = 0.5,
                            }, -- [7]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "EXTERNAL",
                        ["key"] = "EXTERNAL",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [7]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135795:0|t |cFFA330C9Chaos Nova|r",
                                ["useDesc"] = false,
                                ["key"] = "179057",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T642414:0|t |cFF00FF96Leg Sweep|r",
                                ["useDesc"] = false,
                                ["key"] = "119381",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1723987:0|t |cFFBBBBBBBull Rush|r",
                                ["useDesc"] = false,
                                ["key"] = "255654",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132368:0|t |cFFBBBBBBWar Stomp|r",
                                ["useDesc"] = false,
                                ["key"] = "20549",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136013:0|t |cFF0070DECapacitor Totem|r",
                                ["useDesc"] = false,
                                ["key"] = "192058",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T607865:0|t |cFF8787EDShadowfury|r",
                                ["useDesc"] = false,
                                ["key"] = "30283",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236312:0|t |cFFC79C6EShockwave|r",
                                ["useDesc"] = false,
                                ["key"] = "46968",
                                ["width"] = 0.5,
                            }, -- [7]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "HARDCC",
                        ["key"] = "HARDCC",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [8]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236157:0|t |cFFFF7D0AIncarnation: Tre|r",
                                ["useDesc"] = false,
                                ["key"] = "33891",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136107:0|t |cFFFF7D0ATranquility|r",
                                ["useDesc"] = false,
                                ["key"] = "740",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T877514:0|t |cFF00FF96Invoke Chi-Ji, t|r",
                                ["useDesc"] = false,
                                ["key"] = "198664",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1020466:0|t |cFF00FF96Revival|r",
                                ["useDesc"] = false,
                                ["key"] = "115310",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T589117:0|t |cFFF58CBAAvenging Crusade|r",
                                ["useDesc"] = false,
                                ["key"] = "216331",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135875:0|t |cFFF58CBAAvenging Wrath|r",
                                ["useDesc"] = false,
                                ["key"] = "31884",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T571555:0|t |cFFF58CBAHoly Avenger|r",
                                ["useDesc"] = false,
                                ["key"] = "105809",
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135928:0|t |cFFF58CBALay on Hands|r",
                                ["useDesc"] = false,
                                ["key"] = "633",
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T133192:0|t |cFFF58CBAWord of Glory|r",
                                ["useDesc"] = false,
                                ["key"] = "210191",
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1060983:0|t |cFFFFFFFFApotheosis|r",
                                ["useDesc"] = false,
                                ["key"] = "200183",
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237540:0|t |cFFFFFFFFDivine Hymn|r",
                                ["useDesc"] = false,
                                ["key"] = "64843",
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135895:0|t |cFFFFFFFFEvangelism|r",
                                ["useDesc"] = false,
                                ["key"] = "246287",
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T458225:0|t |cFFFFFFFFHoly Word: Salva|r",
                                ["useDesc"] = false,
                                ["key"] = "265202",
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T537078:0|t |cFFFFFFFFLuminous Barrier|r",
                                ["useDesc"] = false,
                                ["key"] = "271466",
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237548:0|t |cFFFFFFFFRapture|r",
                                ["useDesc"] = false,
                                ["key"] = "47536",
                                ["width"] = 0.5,
                            }, -- [15]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136230:0|t |cFFFFFFFFVampiric Embrace|r",
                                ["useDesc"] = false,
                                ["key"] = "15286",
                                ["width"] = 0.5,
                            }, -- [16]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
                                ["useDesc"] = false,
                                ["key"] = "114052",
                                ["width"] = 0.5,
                            }, -- [17]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136098:0|t |cFF0070DEEarthen Wall Tot|r",
                                ["useDesc"] = false,
                                ["key"] = "198838",
                                ["width"] = 0.5,
                            }, -- [18]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T538569:0|t |cFF0070DEHealing Tide Tot|r",
                                ["useDesc"] = false,
                                ["key"] = "108280",
                                ["width"] = 0.5,
                            }, -- [19]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "HEALING",
                        ["key"] = "HEALING",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [9]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T463284:0|t |cFFA330C9Netherwalk|r",
                                ["useDesc"] = false,
                                ["key"] = "196555",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132199:0|t |cFFABD473Aspect of the Tu|r",
                                ["useDesc"] = false,
                                ["key"] = "186265",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135841:0|t |cFF40C7EBIce Block|r",
                                ["useDesc"] = false,
                                ["key"] = "45438",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T524354:0|t |cFFF58CBADivine Shield|r",
                                ["useDesc"] = false,
                                ["key"] = "642",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136177:0|t |cFFFFF569Cloak of Shadows|r",
                                ["useDesc"] = false,
                                ["key"] = "31224",
                                ["width"] = 0.5,
                            }, -- [5]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "IMMUNITY",
                        ["key"] = "IMMUNITY",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [10]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1305153:0|t |cFFA330C9Disrupt|r",
                                ["useDesc"] = false,
                                ["key"] = "183752",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237527:0|t |cFFC41F3BMind Freeze|r",
                                ["useDesc"] = false,
                                ["key"] = "47528",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237569:0|t |cFFC41F3BShambling Rush|r",
                                ["useDesc"] = false,
                                ["key"] = "91802",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236946:0|t |cFFFF7D0ASkull Bash|r",
                                ["useDesc"] = false,
                                ["key"] = "106839",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T252188:0|t |cFFFF7D0ASolar Beam|r",
                                ["useDesc"] = false,
                                ["key"] = "78675",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T249170:0|t |cFFABD473Counter Shot|r",
                                ["useDesc"] = false,
                                ["key"] = "147362",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1376045:0|t |cFFABD473Muzzle|r",
                                ["useDesc"] = false,
                                ["key"] = "187707",
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135856:0|t |cFF40C7EBCounter Spell|r",
                                ["useDesc"] = false,
                                ["key"] = "2139",
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T608940:0|t |cFF00FF96Spear Hand Strik|r",
                                ["useDesc"] = false,
                                ["key"] = "116705",
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T523893:0|t |cFFF58CBARebuke|r",
                                ["useDesc"] = false,
                                ["key"] = "96231",
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T458230:0|t |cFFFFFFFFSilence|r",
                                ["useDesc"] = false,
                                ["key"] = "15487",
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132219:0|t |cFFFFF569Kick|r",
                                ["useDesc"] = false,
                                ["key"] = "1766",
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136018:0|t |cFF0070DEWind Shear|r",
                                ["useDesc"] = false,
                                ["key"] = "57994",
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136174:0|t |cFF8787EDSpell Lock|r",
                                ["useDesc"] = false,
                                ["key"] = "19647",
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132938:0|t |cFFC79C6EPummel|r",
                                ["useDesc"] = false,
                                ["key"] = "6552",
                                ["width"] = 0.5,
                            }, -- [15]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "INTERRUPT",
                        ["key"] = "INTERRUPT",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [11]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1305150:0|t |cFFA330C9Blur|r",
                                ["useDesc"] = false,
                                ["key"] = "198589",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136120:0|t |cFFC41F3BAnti-Magic Shell|r",
                                ["useDesc"] = false,
                                ["key"] = "48707",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136146:0|t |cFFC41F3BDeath Pact|r",
                                ["useDesc"] = false,
                                ["key"] = "48743",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237525:0|t |cFFC41F3BIcebound Fortitu|r",
                                ["useDesc"] = false,
                                ["key"] = "48792",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136097:0|t |cFFFF7D0ABarkskin|r",
                                ["useDesc"] = false,
                                ["key"] = "22812",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136059:0|t |cFFFF7D0ARenewal|r",
                                ["useDesc"] = false,
                                ["key"] = "108238",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236169:0|t |cFFFF7D0ASurvival Instinc|r",
                                ["useDesc"] = false,
                                ["key"] = "61336",
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T461117:0|t |cFFABD473Exhilaration|r",
                                ["useDesc"] = false,
                                ["key"] = "109304",
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132293:0|t |cFFABD473Feign Death|r",
                                ["useDesc"] = false,
                                ["key"] = "5384",
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135865:0|t |cFF40C7EBCold Snap|r",
                                ["useDesc"] = false,
                                ["key"] = "235219",
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T620827:0|t |cFF00FF96Dampen Harm|r",
                                ["useDesc"] = false,
                                ["key"] = "122278",
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T775460:0|t |cFF00FF96Diffuse Magic|r",
                                ["useDesc"] = false,
                                ["key"] = "122783",
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1616072:0|t |cFF00FF96Fortifying Brew|r",
                                ["useDesc"] = false,
                                ["key"] = "243435",
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T608939:0|t |cFF00FF96Healing Elixir|r",
                                ["useDesc"] = false,
                                ["key"] = "122281",
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T651728:0|t |cFF00FF96Touch of Karma|r",
                                ["useDesc"] = false,
                                ["key"] = "122470",
                                ["width"] = 0.5,
                            }, -- [15]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T524353:0|t |cFFF58CBADivine Protectio|r",
                                ["useDesc"] = false,
                                ["key"] = "498",
                                ["width"] = 0.5,
                            }, -- [16]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135986:0|t |cFFF58CBAEye for an Eye|r",
                                ["useDesc"] = false,
                                ["key"] = "205191",
                                ["width"] = 0.5,
                            }, -- [17]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236264:0|t |cFFF58CBAShield of Vengea|r",
                                ["useDesc"] = false,
                                ["key"] = "184662",
                                ["width"] = 0.5,
                            }, -- [18]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237550:0|t |cFFFFFFFFDesperate Prayer|r",
                                ["useDesc"] = false,
                                ["key"] = "19236",
                                ["width"] = 0.5,
                            }, -- [19]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237563:0|t |cFFFFFFFFDispersion|r",
                                ["useDesc"] = false,
                                ["key"] = "47585",
                                ["width"] = 0.5,
                            }, -- [20]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132269:0|t |cFFFFF569Evasion/Riposte|r",
                                ["useDesc"] = false,
                                ["key"] = "Evasion/Riposte",
                                ["width"] = 0.5,
                            }, -- [21]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T538565:0|t |cFF0070DEAstral Shift|r",
                                ["useDesc"] = false,
                                ["key"] = "108271",
                                ["width"] = 0.5,
                            }, -- [22]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T538538:0|t |cFF8787EDDark Pact|r",
                                ["useDesc"] = false,
                                ["key"] = "108416",
                                ["width"] = 0.5,
                            }, -- [23]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136150:0|t |cFF8787EDUnending Resolve|r",
                                ["useDesc"] = false,
                                ["key"] = "104773",
                                ["width"] = 0.5,
                            }, -- [24]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132336:0|t |cFFC79C6EDie by the Sword|r",
                                ["useDesc"] = false,
                                ["key"] = "118038",
                                ["width"] = 0.5,
                            }, -- [25]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132345:0|t |cFFC79C6EEnraged Regenera|r",
                                ["useDesc"] = false,
                                ["key"] = "184364",
                                ["width"] = 0.5,
                            }, -- [26]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "PERSONAL",
                        ["key"] = "PERSONAL",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [12]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1305154:0|t |cFFA330C9Darkness|r",
                                ["useDesc"] = false,
                                ["key"] = "196718",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135909:0|t |cFFF58CBAAegis of Light|r",
                                ["useDesc"] = false,
                                ["key"] = "204150",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135872:0|t |cFFF58CBAAura Mastery|r",
                                ["useDesc"] = false,
                                ["key"] = "31821",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T253400:0|t |cFFFFFFFFPower Word: Barr|r",
                                ["useDesc"] = false,
                                ["key"] = "62618",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136080:0|t |cFF0070DEAncestral Protec|r",
                                ["useDesc"] = false,
                                ["key"] = "207399",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237586:0|t |cFF0070DESpirit Link Tote|r",
                                ["useDesc"] = false,
                                ["key"] = "98008",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132351:0|t |cFFC79C6ERallying Cry|r",
                                ["useDesc"] = false,
                                ["key"] = "97462",
                                ["width"] = 0.5,
                            }, -- [7]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "RAIDCD",
                        ["key"] = "RAIDCD",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [13]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1418286:0|t |cFFA330C9Sigil of Chains|r",
                                ["useDesc"] = false,
                                ["key"] = "202138",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1418287:0|t |cFFA330C9Sigil of Misery|r",
                                ["useDesc"] = false,
                                ["key"] = "207684",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1418288:0|t |cFFA330C9Sigil of Silence|r",
                                ["useDesc"] = false,
                                ["key"] = "202137",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135836:0|t |cFFC41F3BBlinding Sleet|r",
                                ["useDesc"] = false,
                                ["key"] = "207167",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T538767:0|t |cFFC41F3BGorefiend's Gras|r",
                                ["useDesc"] = false,
                                ["key"] = "108199",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132121:0|t |cFFFF7D0AIncapacitating R|r",
                                ["useDesc"] = false,
                                ["key"] = "99",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T538515:0|t |cFFFF7D0AMass Entanglemen|r",
                                ["useDesc"] = false,
                                ["key"] = "102359",
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T236170:0|t |cFFFF7D0ATyphoon|r",
                                ["useDesc"] = false,
                                ["key"] = "132469",
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T571588:0|t |cFFFF7D0AUrsol's Vortex|r",
                                ["useDesc"] = false,
                                ["key"] = "102793",
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T462650:0|t |cFFABD473Binding Shot|r",
                                ["useDesc"] = false,
                                ["key"] = "109248",
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T134153:0|t |cFF40C7EBDragon's Breath|r",
                                ["useDesc"] = false,
                                ["key"] = "31661",
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1698698:0|t |cFF40C7EBFreeze (Pet)|r",
                                ["useDesc"] = false,
                                ["key"] = "33395",
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135848:0|t |cFF40C7EBFrost Nova|r",
                                ["useDesc"] = false,
                                ["key"] = "122",
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T464484:0|t |cFF40C7EBRing of Frost|r",
                                ["useDesc"] = false,
                                ["key"] = "113724",
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T839107:0|t |cFF00FF96Ring of Peace|r",
                                ["useDesc"] = false,
                                ["key"] = "116844",
                                ["width"] = 0.5,
                            }, -- [15]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T571553:0|t |cFFF58CBABlinding Light|r",
                                ["useDesc"] = false,
                                ["key"] = "115750",
                                ["width"] = 0.5,
                            }, -- [16]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136184:0|t |cFFFFFFFFPsychic Scream|r",
                                ["useDesc"] = false,
                                ["key"] = "8122",
                                ["width"] = 0.5,
                            }, -- [17]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T571554:0|t |cFFFFFFFFShining Force|r",
                                ["useDesc"] = false,
                                ["key"] = "204263",
                                ["width"] = 0.5,
                            }, -- [18]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237589:0|t |cFF0070DEThunderstorm|r",
                                ["useDesc"] = false,
                                ["key"] = "51490",
                                ["width"] = 0.5,
                            }, -- [19]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "SOFTCC",
                        ["key"] = "SOFTCC",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [14]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1118739:0|t |cFFA330C9Fel Eruption|r",
                                ["useDesc"] = false,
                                ["key"] = "211881",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T538558:0|t |cFFC41F3BAsphyxiate|r",
                                ["useDesc"] = false,
                                ["key"] = "Asphyxiate",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132114:0|t |cFFFF7D0AMighty Bash|r",
                                ["useDesc"] = false,
                                ["key"] = "5211",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132111:0|t |cFFABD473Intimidation|r",
                                ["useDesc"] = false,
                                ["key"] = "19577",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135963:0|t |cFFF58CBAHammer of Justic|r",
                                ["useDesc"] = false,
                                ["key"] = "853",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135886:0|t |cFFFFFFFFHoly Word: Chast|r",
                                ["useDesc"] = false,
                                ["key"] = "88625",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237568:0|t |cFFFFFFFFPsychic Horror|r",
                                ["useDesc"] = false,
                                ["key"] = "64044",
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T607853:0|t |cFF8787EDMortal Coil|r",
                                ["useDesc"] = false,
                                ["key"] = "6789",
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T613535:0|t |cFFC79C6EStorm Bolt|r",
                                ["useDesc"] = false,
                                ["key"] = "107570",
                                ["width"] = 0.5,
                            }, -- [9]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "STHARDCC",
                        ["key"] = "STHARDCC",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [15]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1380368:0|t |cFFA330C9Imprison|r",
                                ["useDesc"] = false,
                                ["key"] = "217832",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237532:0|t |cFFC41F3BDeath Grip|r",
                                ["useDesc"] = false,
                                ["key"] = "49576",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135834:0|t |cFFABD473Freezing Trap|r",
                                ["useDesc"] = false,
                                ["key"] = "187650",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T629534:0|t |cFF00FF96Paralysis|r",
                                ["useDesc"] = false,
                                ["key"] = "115078",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T572035:0|t |cFFBBBBBBQuaking Palm|r",
                                ["useDesc"] = false,
                                ["key"] = "107079",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136175:0|t |cFFFFF569Blind|r",
                                ["useDesc"] = false,
                                ["key"] = "2094",
                                ["width"] = 0.5,
                            }, -- [6]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "STSOFTCC",
                        ["key"] = "STSOFTCC",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [16]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1450143:0|t |cFFA330C9Fel Devastation|r",
                                ["useDesc"] = false,
                                ["key"] = "212084",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1344647:0|t |cFFA330C9Fiery Brand|r",
                                ["useDesc"] = false,
                                ["key"] = "204021",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1247263:0|t |cFFA330C9Metamorphosis|r",
                                ["useDesc"] = false,
                                ["key"] = "187827",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T838812:0|t |cFFC41F3BBlooddrinker|r",
                                ["useDesc"] = false,
                                ["key"] = "206931",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T342917:0|t |cFFC41F3BBonestorm|r",
                                ["useDesc"] = false,
                                ["key"] = "194844",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T1121487:0|t |cFFC41F3BConsumption|r",
                                ["useDesc"] = false,
                                ["key"] = "274156",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135277:0|t |cFFC41F3BDancing Rune Wea|r",
                                ["useDesc"] = false,
                                ["key"] = "49028",
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T237529:0|t |cFFC41F3BRune Tap|r",
                                ["useDesc"] = false,
                                ["key"] = "194679",
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136168:0|t |cFFC41F3BVampiric Blood|r",
                                ["useDesc"] = false,
                                ["key"] = "55233",
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Gua|r",
                                ["useDesc"] = false,
                                ["key"] = "102558",
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T615341:0|t |cFF00FF96Fortifying Brew|r",
                                ["useDesc"] = false,
                                ["key"] = "115203",
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T608951:0|t |cFF00FF96Invoke Niuzao|r",
                                ["useDesc"] = false,
                                ["key"] = "132578",
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T642417:0|t |cFF00FF96Zen Meditation|r",
                                ["useDesc"] = false,
                                ["key"] = "115176",
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135870:0|t |cFFF58CBAArdent Defender|r",
                                ["useDesc"] = false,
                                ["key"] = "31850",
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135919:0|t |cFFF58CBAGuardian of the |r",
                                ["useDesc"] = false,
                                ["key"] = "86659",
                                ["width"] = 0.5,
                            }, -- [15]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132366:0|t |cFFC79C6EDemoralizing Sho|r",
                                ["useDesc"] = false,
                                ["key"] = "1160",
                                ["width"] = 0.5,
                            }, -- [16]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135871:0|t |cFFC79C6ELast Stand|r",
                                ["useDesc"] = false,
                                ["key"] = "12975",
                                ["width"] = 0.5,
                            }, -- [17]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T970854:0|t |cFFC79C6ERavager|r",
                                ["useDesc"] = false,
                                ["key"] = "228920",
                                ["width"] = 0.5,
                            }, -- [18]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132362:0|t |cFFC79C6EShield Wall|r",
                                ["useDesc"] = false,
                                ["key"] = "871",
                                ["width"] = 0.5,
                            }, -- [19]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132361:0|t |cFFC79C6ESpell Reflection|r",
                                ["useDesc"] = false,
                                ["key"] = "23920",
                                ["width"] = 0.5,
                            }, -- [20]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "TANK",
                        ["key"] = "TANK",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [17]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132129:0|t |cFFFF7D0AForce of Nature |r",
                                ["useDesc"] = false,
                                ["key"] = "205636",
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136048:0|t |cFFFF7D0AInnervate|r",
                                ["useDesc"] = false,
                                ["key"] = "29166",
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T464343:0|t |cFFFF7D0AStampeding Roar|r",
                                ["useDesc"] = false,
                                ["key"] = "106898",
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T651727:0|t |cFF00FF96Tiger's Lust|r",
                                ["useDesc"] = false,
                                ["key"] = "116841",
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T132089:0|t |cFFBBBBBBShadowmeld|r",
                                ["useDesc"] = false,
                                ["key"] = "58984",
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135968:0|t |cFFF58CBABlessing of Free|r",
                                ["useDesc"] = false,
                                ["key"] = "1044",
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T463835:0|t |cFFFFFFFFLeap of Faith|r",
                                ["useDesc"] = false,
                                ["key"] = "73325",
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T135982:0|t |cFFFFFFFFSymbol of Hope|r",
                                ["useDesc"] = false,
                                ["key"] = "64901",
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T635350:0|t |cFFFFF569Shroud of Concea|r",
                                ["useDesc"] = false,
                                ["key"] = "114018",
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136024:0|t |cFF0070DEEarth Elemental|r",
                                ["useDesc"] = false,
                                ["key"] = "198103",
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T136108:0|t |cFF0070DETremor Totem|r",
                                ["useDesc"] = false,
                                ["key"] = "8143",
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["default"] = false,
                                ["name"] = "|T538576:0|t |cFF0070DEWind Rush Totem|r",
                                ["useDesc"] = false,
                                ["key"] = "192077",
                                ["width"] = 0.5,
                            }, -- [12]
                        },
                        ["type"] = "group",
                        ["useDesc"] = false,
                        ["width"] = 2,
                        ["useCollapse"] = true,
                        ["name"] = "UTILITY",
                        ["key"] = "UTILITY",
                        ["limitType"] = "none",
                        ["groupType"] = "simple",
                        ["collapse"] = true,
                        ["size"] = 10,
                    }, -- [18]
                },
                ["type"] = "group",
                ["useDesc"] = false,
                ["width"] = 2,
                ["useCollapse"] = true,
                ["name"] = "By Spell",
                ["key"] = "spell",
                ["limitType"] = "none",
                ["groupType"] = "simple",
                ["collapse"] = false,
                ["size"] = 10,
            }, -- [3]
        },
        ["type"] = "group",
        ["useDesc"] = false,
        ["width"] = 2,
        ["useCollapse"] = true,
        ["name"] = "Spell Registration",
        ["key"] = "reg",
        ["limitType"] = "none",
        ["groupType"] = "simple",
        ["collapse"] = true,
        ["size"] = 10,
    }, -- [2]
    {
        ["type"] = "description",
        ["text"] = " ",
        ["fontSize"] = "medium",
        ["width"] = 2,
    }, -- [3]
    {
        ["type"] = "description",
        ["text"] = " ",
        ["fontSize"] = "medium",
        ["width"] = 2,
    }, -- [4]
    {
        ["type"] = "description",
        ["text"] = "WARNING: Do not click Enter Author Mode!",
        ["fontSize"] = "large",
        ["width"] = 2,
    }, -- [5]
    {
        ["type"] = "description",
        ["text"] = " ",
        ["fontSize"] = "medium",
        ["width"] = 2,
    }, -- [6]
}
