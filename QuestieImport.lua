local E, L, V, P, G = unpack(ElvUI);
local NUI = E:GetModule("Nikipe UI");

--handling Questie import
function NUI:SetQuestieProfile()
    QuestieConfig = {
        ["dbIsCompiled"] = true,
        ["global"] = {
            ["trackerbindSetTomTom"] = "left",
            ["DBMHUDZoom"] = 200,
            ["questObjectiveColors"] = true,
            ["dbmHUDRadius"] = 4,
            ["trackerColorObjectives"] = "whiteAndGreen",
            ["mapCoordinatesEnabled"] = false,
            ["trackerFontZone"] = "Gotham Narrow Ultra",
            ["disableYellComms"] = true,
            ["trackerFontHeader"] = "Gotham Narrow Ultra",
            ["questMinimapObjectiveColors"] = true,
            ["collapseCompletedQuests"] = true,
            ["trackerFontSizeHeader"] = 12,
            ["nameplateX"] = -30,
            ["hideTrackerInCombat"] = true,
            ["onlyPartyShared"] = true,
            ["trackerFontSizeObjective"] = 12,
            ["mapShowHideEnabled"] = false,
            ["trackerFontQuest"] = "Gotham Narrow Ultra",
            ["trackerFontObjective"] = "Gotham Narrow Ultra",
            ["trackerbindOpenQuestLog"] = "right",
            ["dbmHUDShowQuest"] = false,
            ["trackerFontSizeQuest"] = 12,
            ["nameplateY"] = 0,
            ["trackerSortObjectives"] = "byProximity",
            ["dbmHUDEnable"] = false,
            ["migrationVersion"] = {
                ["Nikipe"] = 3,
            },
        },
        ["TrackerLocation"] = {
            "TOPRIGHT", -- [1]
            "UIParent", -- [2]
            "CENTER", -- [3]
            1066.666717529297, -- [4]
            587.333251953125, -- [5]
        },
        ["profileKeys"] = {
            ["Nikipe"] = "Default",
        },
        ["dbCompiledOnVersion"] = "v6.8.2",
        ["npcBin"] = "",
        ["itemPtrs"] = "",
        ["profiles"] = {
            ["Nikipe"] = {
            },
        },
        ["char"] = {
        },
        ["objPtrs"] = "",
        ["questBin"] = "",
        ["npcPtrs"] = "",
        ["questPtrs"] = "",
        ["itemBin"] = "",
        ["dbCompiledLang"] = "enUS",
        ["objBin"] = "",
    }
end
