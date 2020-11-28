{
    {
        ["subOptions"] = {
            {
                ["text"] = "Note: You can adjust other options like icon size in the Display tab",
                ["type"] = "description",
                ["fontSize"] = "medium",
                ["width"] = 2,
            }, -- [1]
            {
                ["text"] = " ",
                ["type"] = "description",
                ["fontSize"] = "medium",
                ["width"] = 2,
            }, -- [2]
            {
                ["width"] = 1,
                ["type"] = "select",
                ["default"] = 1,
                ["values"] = {
                    "Left", -- [1]
                    "Right", -- [2]
                    "Top", -- [3]
                    "Bottom", -- [4]
                },
                ["useDesc"] = true,
                ["name"] = "Grow Direction",
                ["key"] = "growDirection",
                ["desc"] = "Direction the icons grow towards, relative to the raid frame",
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
                ["default"] = 2,
                ["softMax"] = 20,
                ["name"] = "Spacing",
                ["useDesc"] = true,
                ["desc"] = "Amount of pixels between icons",
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
                ["default"] = 0,
                ["softMax"] = 25,
                ["name"] = "X-Offset",
                ["useDesc"] = true,
                ["desc"] = "Amount of pixels the display is offset horizontally",
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
                ["default"] = 0,
                ["softMax"] = 25,
                ["name"] = "Y-Offset",
                ["useDesc"] = true,
                ["desc"] = "Amount of pixels the display is offset vertically",
            }, -- [6]
            {
                ["text"] = " ",
                ["type"] = "description",
                ["fontSize"] = "medium",
                ["width"] = 2,
            }, -- [7]
            {
                ["type"] = "toggle",
                ["name"] = "Force Horizontal",
                ["default"] = false,
                ["key"] = "preserveRows",
                ["useDesc"] = false,
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
                        ["text"] = "Registration - By Type",
                        ["type"] = "description",
                        ["fontSize"] = "large",
                        ["width"] = 2,
                    }, -- [1]
                    {
                        ["text"] = "Coarse-grained registration for spells according to their type",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [2]
                    {
                        ["text"] = " ",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [3]
                    {
                        ["text"] = "'Register? (Reg)' - Whether to register for spells of this type",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [4]
                    {
                        ["text"] = "'Show Own? (Own)' - Whether to show your own spells of this type",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [5]
                    {
                        ["text"] = "'Row (Row)' - Which row (1, 2 or 3) for displaying spells of this type",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [6]
                    {
                        ["text"] = " ",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [7]
                    {
                        ["text"] = "Type",
                        ["type"] = "description",
                        ["fontSize"] = "large",
                        ["width"] = 0.35,
                    }, -- [8]
                    {
                        ["text"] = "Reg",
                        ["type"] = "description",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [9]
                    {
                        ["text"] = "Own",
                        ["type"] = "description",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [10]
                    {
                        ["text"] = "Row",
                        ["type"] = "description",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [11]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [12]
                    {
                        ["text"] = "Type",
                        ["type"] = "description",
                        ["fontSize"] = "large",
                        ["width"] = 0.35,
                    }, -- [13]
                    {
                        ["text"] = "Reg",
                        ["type"] = "description",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [14]
                    {
                        ["text"] = "Own",
                        ["type"] = "description",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [15]
                    {
                        ["text"] = "Row",
                        ["type"] = "description",
                        ["fontSize"] = "large",
                        ["width"] = 0.2,
                    }, -- [16]
                    {
                        ["text"] = "DAMAGE",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [17]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "enabledDAMAGE",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [18]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnDAMAGE",
                        ["useDesc"] = false,
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
                        ["default"] = 1,
                        ["name"] = "",
                    }, -- [20]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [21]
                    {
                        ["text"] = "DEFMDISPEL",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [22]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = false,
                        ["key"] = "enabledDEFMDISPEL",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [23]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnDEFMDISPEL",
                        ["useDesc"] = false,
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
                        ["default"] = 1,
                        ["name"] = "",
                    }, -- [25]
                    {
                        ["text"] = "DISPEL",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [26]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "enabledDISPEL",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [27]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnDISPEL",
                        ["useDesc"] = false,
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
                        ["default"] = 2,
                        ["name"] = "",
                    }, -- [29]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [30]
                    {
                        ["text"] = "EXTERNAL",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [31]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "enabledEXTERNAL",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [32]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnEXTERNAL",
                        ["useDesc"] = false,
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
                        ["default"] = 2,
                        ["name"] = "",
                    }, -- [34]
                    {
                        ["text"] = "HARDCC",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [35]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "enabledHARDCC",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [36]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnHARDCC",
                        ["useDesc"] = false,
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
                        ["default"] = 2,
                        ["name"] = "",
                    }, -- [38]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [39]
                    {
                        ["text"] = "HEALING",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [40]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "enabledHEALING",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [41]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnHEALING",
                        ["useDesc"] = false,
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
                        ["default"] = 1,
                        ["name"] = "",
                    }, -- [43]
                    {
                        ["text"] = "IMMUNITY",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [44]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "enabledIMMUNITY",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [45]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnIMMUNITY",
                        ["useDesc"] = false,
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
                        ["default"] = 1,
                        ["name"] = "",
                    }, -- [47]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [48]
                    {
                        ["text"] = "INTERRUPT",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [49]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = false,
                        ["key"] = "enabledINTERRUPT",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [50]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnINTERRUPT",
                        ["useDesc"] = false,
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
                        ["default"] = 1,
                        ["name"] = "",
                    }, -- [52]
                    {
                        ["text"] = "PERSONAL",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [53]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "enabledPERSONAL",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [54]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnPERSONAL",
                        ["useDesc"] = false,
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
                        ["default"] = 1,
                        ["name"] = "",
                    }, -- [56]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [57]
                    {
                        ["text"] = "RAIDCD",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [58]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "enabledRAIDCD",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [59]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnRAIDCD",
                        ["useDesc"] = false,
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
                        ["default"] = 2,
                        ["name"] = "",
                    }, -- [61]
                    {
                        ["text"] = "SOFTCC",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [62]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "enabledSOFTCC",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [63]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnSOFTCC",
                        ["useDesc"] = false,
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
                        ["default"] = 2,
                        ["name"] = "",
                    }, -- [65]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [66]
                    {
                        ["text"] = "STHARDCC",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [67]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = false,
                        ["key"] = "enabledSTHARDCC",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [68]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnSTHARDCC",
                        ["useDesc"] = false,
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
                        ["default"] = 1,
                        ["name"] = "",
                    }, -- [70]
                    {
                        ["text"] = "STSOFTCC",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [71]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = false,
                        ["key"] = "enabledSTSOFTCC",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [72]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnSTSOFTCC",
                        ["useDesc"] = false,
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
                        ["default"] = 1,
                        ["name"] = "",
                    }, -- [74]
                    {
                        ["type"] = "space",
                        ["variableWidth"] = true,
                        ["width"] = 0.1,
                    }, -- [75]
                    {
                        ["text"] = "TANK",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [76]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = false,
                        ["key"] = "enabledTANK",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [77]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnTANK",
                        ["useDesc"] = false,
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
                        ["default"] = 1,
                        ["name"] = "",
                    }, -- [79]
                    {
                        ["text"] = "UTILITY",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 0.35,
                    }, -- [80]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "enabledUTILITY",
                        ["useDesc"] = false,
                        ["width"] = 0.2,
                    }, -- [81]
                    {
                        ["type"] = "toggle",
                        ["name"] = "",
                        ["default"] = true,
                        ["key"] = "showOwnUTILITY",
                        ["useDesc"] = false,
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
                        ["default"] = 2,
                        ["name"] = "",
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
                ["text"] = " ",
                ["type"] = "description",
                ["fontSize"] = "medium",
                ["width"] = 2,
            }, -- [2]
            {
                ["subOptions"] = {
                    {
                        ["text"] = "Fine-grained registration for individual spells. If a given type is registered, these settings will instead be treated as a blacklist for that type.",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [1]
                    {
                        ["text"] = "Spells will be shown according to the row specified for their associated type in the \\\"Registration - By Type\\\" settings",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [2]
                    {
                        ["text"] = " ",
                        ["type"] = "description",
                        ["fontSize"] = "medium",
                        ["width"] = 2,
                    }, -- [3]
                    {
                        ["subOptions"] = {
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T2065580:0|t |cFFA330C9Fel Barrage|r",
                                ["default"] = false,
                                ["key"] = "258925",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1247262:0|t |cFFA330C9Metamorphosis|r",
                                ["default"] = false,
                                ["key"] = "191427",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236299:0|t |cFFA330C9Nemesis|r",
                                ["default"] = false,
                                ["key"] = "206491",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1392565:0|t |cFFC41F3BApocalypse|r",
                                ["default"] = false,
                                ["key"] = "275699",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237511:0|t |cFFC41F3BArmy of the Dead|r",
                                ["default"] = false,
                                ["key"] = "42650",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1029007:0|t |cFFC41F3BBreath of Sindra|r",
                                ["default"] = false,
                                ["key"] = "152279",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135372:0|t |cFFC41F3BEmpower Rune Wea|r",
                                ["default"] = false,
                                ["key"] = "47568",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T341980:0|t |cFFC41F3BFrostwyrm's Fury|r",
                                ["default"] = false,
                                ["key"] = "279302",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T458967:0|t |cFFC41F3BSummon Gargoyle|r",
                                ["default"] = false,
                                ["key"] = "49206",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136224:0|t |cFFC41F3BUnholy Frenzy|r",
                                ["default"] = false,
                                ["key"] = "207289",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236149:0|t |cFFFF7D0ABerserk|r",
                                ["default"] = false,
                                ["key"] = "106951",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136060:0|t |cFFFF7D0ACelestial Alignm|r",
                                ["default"] = false,
                                ["key"] = "194223",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132123:0|t |cFFFF7D0AFury of Elune|r",
                                ["default"] = false,
                                ["key"] = "202770",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Cho|r",
                                ["default"] = false,
                                ["key"] = "102560",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Kin|r",
                                ["default"] = false,
                                ["key"] = "102543",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [15]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136074:0|t |cFFABD473Aspect of the Wi|r",
                                ["default"] = false,
                                ["key"] = "193530",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [16]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132127:0|t |cFFABD473Bestial Wrath|r",
                                ["default"] = false,
                                ["key"] = "19574",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [17]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T2065565:0|t |cFFABD473Coordinated Assa|r",
                                ["default"] = false,
                                ["key"] = "266779",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [18]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T461112:0|t |cFFABD473Stampede|r",
                                ["default"] = false,
                                ["key"] = "201430",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [19]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132329:0|t |cFFABD473Trueshot|r",
                                ["default"] = false,
                                ["key"] = "288613",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [20]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136048:0|t |cFF40C7EBArcane Power|r",
                                ["default"] = false,
                                ["key"] = "12042",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [21]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135824:0|t |cFF40C7EBCombustion|r",
                                ["default"] = false,
                                ["key"] = "190319",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [22]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135838:0|t |cFF40C7EBIcy Veins|r",
                                ["default"] = false,
                                ["key"] = "12472",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [23]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135994:0|t |cFF40C7EBMirror Image|r",
                                ["default"] = false,
                                ["key"] = "55342",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [24]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T620832:0|t |cFF00FF96Invoke Xuen, the|r",
                                ["default"] = false,
                                ["key"] = "123904",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [25]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T988197:0|t |cFF00FF96Serenity|r",
                                ["default"] = false,
                                ["key"] = "152173",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [26]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136038:0|t |cFF00FF96Storm, Earth, an|r",
                                ["default"] = false,
                                ["key"] = "137639",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [27]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T606552:0|t |cFF00FF96Touch of Death|r",
                                ["default"] = false,
                                ["key"] = "115080",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [28]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135875:0|t |cFFF58CBAAvenging Wrath|r",
                                ["default"] = false,
                                ["key"] = "31884",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [29]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236262:0|t |cFFF58CBACrusade|r",
                                ["default"] = false,
                                ["key"] = "231895",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [30]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1030103:0|t |cFFF58CBASeraphim|r",
                                ["default"] = false,
                                ["key"] = "152262",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [31]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1711336:0|t |cFFFFFFFFDark Ascension|r",
                                ["default"] = false,
                                ["key"] = "280711",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [32]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T254090:0|t |cFFFFFFFFSurrender to Mad|r",
                                ["default"] = false,
                                ["key"] = "193223",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [33]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136206:0|t |cFFFFF569Adrenaline Rush|r",
                                ["default"] = false,
                                ["key"] = "13750",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [34]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236277:0|t |cFFFFF569Killing Spree|r",
                                ["default"] = false,
                                ["key"] = "51690",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [35]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T376022:0|t |cFFFFF569Shadow Blades|r",
                                ["default"] = false,
                                ["key"] = "121471",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [36]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T458726:0|t |cFFFFF569Vendetta|r",
                                ["default"] = false,
                                ["key"] = "79140",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [37]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
                                ["default"] = false,
                                ["key"] = "Ascendance",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [38]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237577:0|t |cFF0070DEFeral Spirit|r",
                                ["default"] = false,
                                ["key"] = "51533",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [39]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T2065626:0|t |cFF0070DEStorm Elemental|r",
                                ["default"] = false,
                                ["key"] = "192249",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [40]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T839977:0|t |cFF0070DEStormkeeper|r",
                                ["default"] = false,
                                ["key"] = "191634",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [41]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T463286:0|t |cFF8787EDDark Soul: Insta|r",
                                ["default"] = false,
                                ["key"] = "113858",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [42]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T463286:0|t |cFF8787EDDark Soul: Miser|r",
                                ["default"] = false,
                                ["key"] = "113860",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [43]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T2065615:0|t |cFF8787EDNether Portal|r",
                                ["default"] = false,
                                ["key"] = "267217",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [44]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1416161:0|t |cFF8787EDSummon Darkglare|r",
                                ["default"] = false,
                                ["key"] = "205180",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [45]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T2065628:0|t |cFF8787EDSummon Demonic T|r",
                                ["default"] = false,
                                ["key"] = "265187",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [46]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136219:0|t |cFF8787EDSummon Infernal|r",
                                ["default"] = false,
                                ["key"] = "1122",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [47]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T613534:0|t |cFFC79C6EAvatar|r",
                                ["default"] = false,
                                ["key"] = "107574",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [48]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236303:0|t |cFFC79C6EBladestorm|r",
                                ["default"] = false,
                                ["key"] = "Bladestorm",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [49]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T458972:0|t |cFFC79C6ERecklessness|r",
                                ["default"] = false,
                                ["key"] = "1719",
                                ["useDesc"] = false,
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
                                ["name"] = "|T236288:0|t |cFFFF7D0ANature's Cure|r",
                                ["default"] = false,
                                ["key"] = "88423",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T460692:0|t |cFF00FF96Detox|r",
                                ["default"] = false,
                                ["key"] = "115450",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135949:0|t |cFFF58CBACleanse|r",
                                ["default"] = false,
                                ["key"] = "4987",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135894:0|t |cFFFFFFFFPurify|r",
                                ["default"] = false,
                                ["key"] = "527",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236288:0|t |cFF0070DEPurify Spirit|r",
                                ["default"] = false,
                                ["key"] = "77130",
                                ["useDesc"] = false,
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
                                ["name"] = "|T828455:0|t |cFFA330C9Disrupt|r",
                                ["default"] = false,
                                ["key"] = "278326",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132163:0|t |cFFFF7D0ASoothe|r",
                                ["default"] = false,
                                ["key"] = "2908",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136222:0|t |cFFBBBBBBArcane Torrent|r",
                                ["default"] = false,
                                ["key"] = "ArcaneTorrent",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135739:0|t |cFFFFFFFFMass Dispel|r",
                                ["default"] = false,
                                ["key"] = "32375",
                                ["useDesc"] = false,
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
                                ["name"] = "|T572025:0|t |cFFFF7D0AIronbark|r",
                                ["default"] = false,
                                ["key"] = "102342",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T627485:0|t |cFF00FF96Life Cocoon|r",
                                ["default"] = false,
                                ["key"] = "116849",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135964:0|t |cFFF58CBABlessing of Prot|r",
                                ["default"] = false,
                                ["key"] = "1022",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135966:0|t |cFFF58CBABlessing of Sacr|r",
                                ["default"] = false,
                                ["key"] = "6940",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135880:0|t |cFFF58CBABlessing of Spel|r",
                                ["default"] = false,
                                ["key"] = "204018",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237542:0|t |cFFFFFFFFGuardian Spirit|r",
                                ["default"] = false,
                                ["key"] = "47788",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135936:0|t |cFFFFFFFFPain Supression|r",
                                ["default"] = false,
                                ["key"] = "33206",
                                ["useDesc"] = false,
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
                                ["name"] = "|T135795:0|t |cFFA330C9Chaos Nova|r",
                                ["default"] = false,
                                ["key"] = "179057",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T642414:0|t |cFF00FF96Leg Sweep|r",
                                ["default"] = false,
                                ["key"] = "119381",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1723987:0|t |cFFBBBBBBBull Rush|r",
                                ["default"] = false,
                                ["key"] = "255654",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132368:0|t |cFFBBBBBBWar Stomp|r",
                                ["default"] = false,
                                ["key"] = "20549",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136013:0|t |cFF0070DECapacitor Totem|r",
                                ["default"] = false,
                                ["key"] = "192058",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T607865:0|t |cFF8787EDShadowfury|r",
                                ["default"] = false,
                                ["key"] = "30283",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236312:0|t |cFFC79C6EShockwave|r",
                                ["default"] = false,
                                ["key"] = "46968",
                                ["useDesc"] = false,
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
                                ["name"] = "|T236157:0|t |cFFFF7D0AIncarnation: Tre|r",
                                ["default"] = false,
                                ["key"] = "33891",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136107:0|t |cFFFF7D0ATranquility|r",
                                ["default"] = false,
                                ["key"] = "740",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T877514:0|t |cFF00FF96Invoke Chi-Ji, t|r",
                                ["default"] = false,
                                ["key"] = "198664",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1020466:0|t |cFF00FF96Revival|r",
                                ["default"] = false,
                                ["key"] = "115310",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T589117:0|t |cFFF58CBAAvenging Crusade|r",
                                ["default"] = false,
                                ["key"] = "216331",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135875:0|t |cFFF58CBAAvenging Wrath|r",
                                ["default"] = false,
                                ["key"] = "31884",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T571555:0|t |cFFF58CBAHoly Avenger|r",
                                ["default"] = false,
                                ["key"] = "105809",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135928:0|t |cFFF58CBALay on Hands|r",
                                ["default"] = false,
                                ["key"] = "633",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T133192:0|t |cFFF58CBAWord of Glory|r",
                                ["default"] = false,
                                ["key"] = "210191",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1060983:0|t |cFFFFFFFFApotheosis|r",
                                ["default"] = false,
                                ["key"] = "200183",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237540:0|t |cFFFFFFFFDivine Hymn|r",
                                ["default"] = false,
                                ["key"] = "64843",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135895:0|t |cFFFFFFFFEvangelism|r",
                                ["default"] = false,
                                ["key"] = "246287",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T458225:0|t |cFFFFFFFFHoly Word: Salva|r",
                                ["default"] = false,
                                ["key"] = "265202",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T537078:0|t |cFFFFFFFFLuminous Barrier|r",
                                ["default"] = false,
                                ["key"] = "271466",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237548:0|t |cFFFFFFFFRapture|r",
                                ["default"] = false,
                                ["key"] = "47536",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [15]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136230:0|t |cFFFFFFFFVampiric Embrace|r",
                                ["default"] = false,
                                ["key"] = "15286",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [16]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
                                ["default"] = false,
                                ["key"] = "114052",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [17]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136098:0|t |cFF0070DEEarthen Wall Tot|r",
                                ["default"] = false,
                                ["key"] = "198838",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [18]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T538569:0|t |cFF0070DEHealing Tide Tot|r",
                                ["default"] = false,
                                ["key"] = "108280",
                                ["useDesc"] = false,
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
                                ["name"] = "|T463284:0|t |cFFA330C9Netherwalk|r",
                                ["default"] = false,
                                ["key"] = "196555",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132199:0|t |cFFABD473Aspect of the Tu|r",
                                ["default"] = false,
                                ["key"] = "186265",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135841:0|t |cFF40C7EBIce Block|r",
                                ["default"] = false,
                                ["key"] = "45438",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T524354:0|t |cFFF58CBADivine Shield|r",
                                ["default"] = false,
                                ["key"] = "642",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136177:0|t |cFFFFF569Cloak of Shadows|r",
                                ["default"] = false,
                                ["key"] = "31224",
                                ["useDesc"] = false,
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
                                ["name"] = "|T1305153:0|t |cFFA330C9Disrupt|r",
                                ["default"] = false,
                                ["key"] = "183752",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237527:0|t |cFFC41F3BMind Freeze|r",
                                ["default"] = false,
                                ["key"] = "47528",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237569:0|t |cFFC41F3BShambling Rush|r",
                                ["default"] = false,
                                ["key"] = "91802",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236946:0|t |cFFFF7D0ASkull Bash|r",
                                ["default"] = false,
                                ["key"] = "106839",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T252188:0|t |cFFFF7D0ASolar Beam|r",
                                ["default"] = false,
                                ["key"] = "78675",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T249170:0|t |cFFABD473Counter Shot|r",
                                ["default"] = false,
                                ["key"] = "147362",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1376045:0|t |cFFABD473Muzzle|r",
                                ["default"] = false,
                                ["key"] = "187707",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135856:0|t |cFF40C7EBCounter Spell|r",
                                ["default"] = false,
                                ["key"] = "2139",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T608940:0|t |cFF00FF96Spear Hand Strik|r",
                                ["default"] = false,
                                ["key"] = "116705",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T523893:0|t |cFFF58CBARebuke|r",
                                ["default"] = false,
                                ["key"] = "96231",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T458230:0|t |cFFFFFFFFSilence|r",
                                ["default"] = false,
                                ["key"] = "15487",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132219:0|t |cFFFFF569Kick|r",
                                ["default"] = false,
                                ["key"] = "1766",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136018:0|t |cFF0070DEWind Shear|r",
                                ["default"] = false,
                                ["key"] = "57994",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136174:0|t |cFF8787EDSpell Lock|r",
                                ["default"] = false,
                                ["key"] = "19647",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132938:0|t |cFFC79C6EPummel|r",
                                ["default"] = false,
                                ["key"] = "6552",
                                ["useDesc"] = false,
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
                                ["name"] = "|T1305150:0|t |cFFA330C9Blur|r",
                                ["default"] = false,
                                ["key"] = "198589",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136120:0|t |cFFC41F3BAnti-Magic Shell|r",
                                ["default"] = false,
                                ["key"] = "48707",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136146:0|t |cFFC41F3BDeath Pact|r",
                                ["default"] = false,
                                ["key"] = "48743",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237525:0|t |cFFC41F3BIcebound Fortitu|r",
                                ["default"] = false,
                                ["key"] = "48792",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136097:0|t |cFFFF7D0ABarkskin|r",
                                ["default"] = false,
                                ["key"] = "22812",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136059:0|t |cFFFF7D0ARenewal|r",
                                ["default"] = false,
                                ["key"] = "108238",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236169:0|t |cFFFF7D0ASurvival Instinc|r",
                                ["default"] = false,
                                ["key"] = "61336",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T461117:0|t |cFFABD473Exhilaration|r",
                                ["default"] = false,
                                ["key"] = "109304",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132293:0|t |cFFABD473Feign Death|r",
                                ["default"] = false,
                                ["key"] = "5384",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135865:0|t |cFF40C7EBCold Snap|r",
                                ["default"] = false,
                                ["key"] = "235219",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T620827:0|t |cFF00FF96Dampen Harm|r",
                                ["default"] = false,
                                ["key"] = "122278",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T775460:0|t |cFF00FF96Diffuse Magic|r",
                                ["default"] = false,
                                ["key"] = "122783",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1616072:0|t |cFF00FF96Fortifying Brew|r",
                                ["default"] = false,
                                ["key"] = "243435",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T608939:0|t |cFF00FF96Healing Elixir|r",
                                ["default"] = false,
                                ["key"] = "122281",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T651728:0|t |cFF00FF96Touch of Karma|r",
                                ["default"] = false,
                                ["key"] = "122470",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [15]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T524353:0|t |cFFF58CBADivine Protectio|r",
                                ["default"] = false,
                                ["key"] = "498",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [16]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135986:0|t |cFFF58CBAEye for an Eye|r",
                                ["default"] = false,
                                ["key"] = "205191",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [17]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236264:0|t |cFFF58CBAShield of Vengea|r",
                                ["default"] = false,
                                ["key"] = "184662",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [18]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237550:0|t |cFFFFFFFFDesperate Prayer|r",
                                ["default"] = false,
                                ["key"] = "19236",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [19]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237563:0|t |cFFFFFFFFDispersion|r",
                                ["default"] = false,
                                ["key"] = "47585",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [20]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132269:0|t |cFFFFF569Evasion/Riposte|r",
                                ["default"] = false,
                                ["key"] = "Evasion/Riposte",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [21]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T538565:0|t |cFF0070DEAstral Shift|r",
                                ["default"] = false,
                                ["key"] = "108271",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [22]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T538538:0|t |cFF8787EDDark Pact|r",
                                ["default"] = false,
                                ["key"] = "108416",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [23]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136150:0|t |cFF8787EDUnending Resolve|r",
                                ["default"] = false,
                                ["key"] = "104773",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [24]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132336:0|t |cFFC79C6EDie by the Sword|r",
                                ["default"] = false,
                                ["key"] = "118038",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [25]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132345:0|t |cFFC79C6EEnraged Regenera|r",
                                ["default"] = false,
                                ["key"] = "184364",
                                ["useDesc"] = false,
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
                                ["name"] = "|T1305154:0|t |cFFA330C9Darkness|r",
                                ["default"] = false,
                                ["key"] = "196718",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135909:0|t |cFFF58CBAAegis of Light|r",
                                ["default"] = false,
                                ["key"] = "204150",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135872:0|t |cFFF58CBAAura Mastery|r",
                                ["default"] = false,
                                ["key"] = "31821",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T253400:0|t |cFFFFFFFFPower Word: Barr|r",
                                ["default"] = false,
                                ["key"] = "62618",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136080:0|t |cFF0070DEAncestral Protec|r",
                                ["default"] = false,
                                ["key"] = "207399",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237586:0|t |cFF0070DESpirit Link Tote|r",
                                ["default"] = false,
                                ["key"] = "98008",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132351:0|t |cFFC79C6ERallying Cry|r",
                                ["default"] = false,
                                ["key"] = "97462",
                                ["useDesc"] = false,
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
                                ["name"] = "|T1418286:0|t |cFFA330C9Sigil of Chains|r",
                                ["default"] = false,
                                ["key"] = "202138",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1418287:0|t |cFFA330C9Sigil of Misery|r",
                                ["default"] = false,
                                ["key"] = "207684",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1418288:0|t |cFFA330C9Sigil of Silence|r",
                                ["default"] = false,
                                ["key"] = "202137",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135836:0|t |cFFC41F3BBlinding Sleet|r",
                                ["default"] = false,
                                ["key"] = "207167",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T538767:0|t |cFFC41F3BGorefiend's Gras|r",
                                ["default"] = false,
                                ["key"] = "108199",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132121:0|t |cFFFF7D0AIncapacitating R|r",
                                ["default"] = false,
                                ["key"] = "99",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T538515:0|t |cFFFF7D0AMass Entanglemen|r",
                                ["default"] = false,
                                ["key"] = "102359",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T236170:0|t |cFFFF7D0ATyphoon|r",
                                ["default"] = false,
                                ["key"] = "132469",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T571588:0|t |cFFFF7D0AUrsol's Vortex|r",
                                ["default"] = false,
                                ["key"] = "102793",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T462650:0|t |cFFABD473Binding Shot|r",
                                ["default"] = false,
                                ["key"] = "109248",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T134153:0|t |cFF40C7EBDragon's Breath|r",
                                ["default"] = false,
                                ["key"] = "31661",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1698698:0|t |cFF40C7EBFreeze (Pet)|r",
                                ["default"] = false,
                                ["key"] = "33395",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135848:0|t |cFF40C7EBFrost Nova|r",
                                ["default"] = false,
                                ["key"] = "122",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T464484:0|t |cFF40C7EBRing of Frost|r",
                                ["default"] = false,
                                ["key"] = "113724",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T839107:0|t |cFF00FF96Ring of Peace|r",
                                ["default"] = false,
                                ["key"] = "116844",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [15]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T571553:0|t |cFFF58CBABlinding Light|r",
                                ["default"] = false,
                                ["key"] = "115750",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [16]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136184:0|t |cFFFFFFFFPsychic Scream|r",
                                ["default"] = false,
                                ["key"] = "8122",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [17]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T571554:0|t |cFFFFFFFFShining Force|r",
                                ["default"] = false,
                                ["key"] = "204263",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [18]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237589:0|t |cFF0070DEThunderstorm|r",
                                ["default"] = false,
                                ["key"] = "51490",
                                ["useDesc"] = false,
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
                                ["name"] = "|T1118739:0|t |cFFA330C9Fel Eruption|r",
                                ["default"] = false,
                                ["key"] = "211881",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T538558:0|t |cFFC41F3BAsphyxiate|r",
                                ["default"] = false,
                                ["key"] = "Asphyxiate",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132114:0|t |cFFFF7D0AMighty Bash|r",
                                ["default"] = false,
                                ["key"] = "5211",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132111:0|t |cFFABD473Intimidation|r",
                                ["default"] = false,
                                ["key"] = "19577",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135963:0|t |cFFF58CBAHammer of Justic|r",
                                ["default"] = false,
                                ["key"] = "853",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135886:0|t |cFFFFFFFFHoly Word: Chast|r",
                                ["default"] = false,
                                ["key"] = "88625",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237568:0|t |cFFFFFFFFPsychic Horror|r",
                                ["default"] = false,
                                ["key"] = "64044",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T607853:0|t |cFF8787EDMortal Coil|r",
                                ["default"] = false,
                                ["key"] = "6789",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T613535:0|t |cFFC79C6EStorm Bolt|r",
                                ["default"] = false,
                                ["key"] = "107570",
                                ["useDesc"] = false,
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
                                ["name"] = "|T1380368:0|t |cFFA330C9Imprison|r",
                                ["default"] = false,
                                ["key"] = "217832",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237532:0|t |cFFC41F3BDeath Grip|r",
                                ["default"] = false,
                                ["key"] = "49576",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135834:0|t |cFFABD473Freezing Trap|r",
                                ["default"] = false,
                                ["key"] = "187650",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T629534:0|t |cFF00FF96Paralysis|r",
                                ["default"] = false,
                                ["key"] = "115078",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T572035:0|t |cFFBBBBBBQuaking Palm|r",
                                ["default"] = false,
                                ["key"] = "107079",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136175:0|t |cFFFFF569Blind|r",
                                ["default"] = false,
                                ["key"] = "2094",
                                ["useDesc"] = false,
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
                                ["name"] = "|T1450143:0|t |cFFA330C9Fel Devastation|r",
                                ["default"] = false,
                                ["key"] = "212084",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1344647:0|t |cFFA330C9Fiery Brand|r",
                                ["default"] = false,
                                ["key"] = "204021",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1247263:0|t |cFFA330C9Metamorphosis|r",
                                ["default"] = false,
                                ["key"] = "187827",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T838812:0|t |cFFC41F3BBlooddrinker|r",
                                ["default"] = false,
                                ["key"] = "206931",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T342917:0|t |cFFC41F3BBonestorm|r",
                                ["default"] = false,
                                ["key"] = "194844",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T1121487:0|t |cFFC41F3BConsumption|r",
                                ["default"] = false,
                                ["key"] = "274156",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135277:0|t |cFFC41F3BDancing Rune Wea|r",
                                ["default"] = false,
                                ["key"] = "49028",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T237529:0|t |cFFC41F3BRune Tap|r",
                                ["default"] = false,
                                ["key"] = "194679",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136168:0|t |cFFC41F3BVampiric Blood|r",
                                ["default"] = false,
                                ["key"] = "55233",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Gua|r",
                                ["default"] = false,
                                ["key"] = "102558",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T615341:0|t |cFF00FF96Fortifying Brew|r",
                                ["default"] = false,
                                ["key"] = "115203",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T608951:0|t |cFF00FF96Invoke Niuzao|r",
                                ["default"] = false,
                                ["key"] = "132578",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [12]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T642417:0|t |cFF00FF96Zen Meditation|r",
                                ["default"] = false,
                                ["key"] = "115176",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [13]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135870:0|t |cFFF58CBAArdent Defender|r",
                                ["default"] = false,
                                ["key"] = "31850",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [14]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135919:0|t |cFFF58CBAGuardian of the |r",
                                ["default"] = false,
                                ["key"] = "86659",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [15]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132366:0|t |cFFC79C6EDemoralizing Sho|r",
                                ["default"] = false,
                                ["key"] = "1160",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [16]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135871:0|t |cFFC79C6ELast Stand|r",
                                ["default"] = false,
                                ["key"] = "12975",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [17]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T970854:0|t |cFFC79C6ERavager|r",
                                ["default"] = false,
                                ["key"] = "228920",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [18]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132362:0|t |cFFC79C6EShield Wall|r",
                                ["default"] = false,
                                ["key"] = "871",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [19]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132361:0|t |cFFC79C6ESpell Reflection|r",
                                ["default"] = false,
                                ["key"] = "23920",
                                ["useDesc"] = false,
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
                                ["name"] = "|T132129:0|t |cFFFF7D0AForce of Nature |r",
                                ["default"] = false,
                                ["key"] = "205636",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [1]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136048:0|t |cFFFF7D0AInnervate|r",
                                ["default"] = false,
                                ["key"] = "29166",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [2]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T464343:0|t |cFFFF7D0AStampeding Roar|r",
                                ["default"] = false,
                                ["key"] = "106898",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [3]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T651727:0|t |cFF00FF96Tiger's Lust|r",
                                ["default"] = false,
                                ["key"] = "116841",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [4]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T132089:0|t |cFFBBBBBBShadowmeld|r",
                                ["default"] = false,
                                ["key"] = "58984",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [5]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135968:0|t |cFFF58CBABlessing of Free|r",
                                ["default"] = false,
                                ["key"] = "1044",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [6]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T463835:0|t |cFFFFFFFFLeap of Faith|r",
                                ["default"] = false,
                                ["key"] = "73325",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [7]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T135982:0|t |cFFFFFFFFSymbol of Hope|r",
                                ["default"] = false,
                                ["key"] = "64901",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [8]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T635350:0|t |cFFFFF569Shroud of Concea|r",
                                ["default"] = false,
                                ["key"] = "114018",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [9]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136024:0|t |cFF0070DEEarth Elemental|r",
                                ["default"] = false,
                                ["key"] = "198103",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [10]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T136108:0|t |cFF0070DETremor Totem|r",
                                ["default"] = false,
                                ["key"] = "8143",
                                ["useDesc"] = false,
                                ["width"] = 0.5,
                            }, -- [11]
                            {
                                ["type"] = "toggle",
                                ["name"] = "|T538576:0|t |cFF0070DEWind Rush Totem|r",
                                ["default"] = false,
                                ["key"] = "192077",
                                ["useDesc"] = false,
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
        ["text"] = " ",
        ["type"] = "description",
        ["fontSize"] = "medium",
        ["width"] = 2,
    }, -- [3]
    {
        ["text"] = " ",
        ["type"] = "description",
        ["fontSize"] = "medium",
        ["width"] = 2,
    }, -- [4]
    {
        ["text"] = "WARNING: Do not click Enter Author Mode!",
        ["type"] = "description",
        ["fontSize"] = "large",
        ["width"] = 2,
    }, -- [5]
    {
        ["text"] = " ",
        ["type"] = "description",
        ["fontSize"] = "medium",
        ["width"] = 2,
    }, -- [6]
}
