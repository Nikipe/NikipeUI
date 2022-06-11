--initialising dependencies
local E, L, V, P, G = unpack(ElvUI);
local NUI = E:GetModule("Nikipe UI");

--handling Questie import
function NUI:SetQuestieProfile()
    local Tank = "Nikipe UI"
    QuestieConfig = {
        ["dbIsCompiled"] = true,
        ["global"] = {
            ["trackerHeaderEnabled"] = true,
            ["iconLimit"] = 200,
            ["enableObjectives"] = true,
            ["trackerbindSetTomTom"] = "left",
            ["alwaysGlowMinimap"] = false,
            ["hideTrackerInDungeons"] = true,
            ["DBMHUDZoom"] = 100,
            ["questObjectiveColors"] = true,
            ["trackerShowCompleteQuests"] = false,
            ["eventScale"] = 1.35,
            ["dbmHUDRadius"] = 3,
            ["DBMHUDRefresh"] = 0.03,
            ["fadeLevel"] = 20,
            ["enableIconLimit"] = false,
            ["trackerbindUntrack"] = "shiftleft",
            ["showBlizzardQuestTimer"] = false,
            ["mapCoordinatesEnabled"] = false,
            ["trackerFontZone"] = "Gotham Narrow Ultra",
            ["trackerHeaderAutoMove"] = false,
            ["disableYellComms"] = true,
            ["isleOfQuelDanasPhase"] = 1,
            ["nameplateTargetFrameY"] = 25,
            ["availableScale"] = 1.3,
            ["isIsleOfQuelDanasPhaseReminderDisabled"] = false,
            ["nameplateTargetFrameEnabled"] = false,
            ["globalScale"] = 0.7,
            ["enableAvailable"] = true,
            ["alwaysGlowMap"] = true,
            ["trackerFontSizeZone"] = 12,
            ["monsterScale"] = 1,
            ["trackerFontHeader"] = "Gotham Narrow Ultra",
            ["trackerBackdropAlpha"] = 1,
            ["dbmHUDShowLoot"] = false,
            ["debugLevel"] = 0,
            ["globalMiniMapScale"] = 0.7,
            ["nameplateScale"] = 1,
            ["nameplateTargetFrameX"] = -30,
            ["trackerBorderEnabled"] = false,
            ["TrackerLocation"] = {
                "AUTO", -- [1]
                nil, -- [2]
                "TOPLEFT", -- [3]
                0.00030517578125, -- [4]
                299.9999389648438, -- [5]
            },
            ["dbmHUDShowAlert"] = true,
            ["nameplateEnabled"] = true,
            ["globalMigrationSteps"] = {
                true, -- [1]
                true, -- [2]
                true, -- [3]
                true, -- [4]
                true, -- [5]
                true, -- [6]
                true, -- [7]
                true, -- [8]
                true, -- [9]
                true, -- [10]
            },
            ["fadeOverPlayerDistance"] = 5,
            ["fadeOverPlayer"] = true,
            ["debugEnabled"] = false,
            ["trackerbindOpenQuestLog"] = "right",
            ["dbmHUDShowSlay"] = false,
            ["trackerBackdropEnabled"] = false,
            ["hideTrackerInCombat"] = true,
            ["mapShowHideEnabled"] = false,
            ["questieTLoc"] = "char",
            ["trackerFontSizeHeader"] = 12,
            ["nameplateX"] = -30,
            ["stickyDurabilityFrame"] = false,
            ["minimapCoordinatesEnabled"] = false,
            ["nameplateTargetFrameScale"] = 1.7,
            ["trackerFontSizeObjective"] = 12,
            ["onlyPartyShared"] = true,
            ["trackerFontQuest"] = "Gotham Narrow Ultra",
            ["enableMiniMapIcons"] = true,
            ["questieLocale"] = "enUS",
            ["objectScale"] = 1,
            ["questieLocaleDiff"] = false,
            ["collapseCompletedQuests"] = true,
            ["dbmHUDShowQuest"] = true,
            ["lootScale"] = 1,
            ["iconFadeLevel"] = 0.3,
            ["enableTurnins"] = true,
            ["trackerFontSizeQuest"] = 12,
            ["nameplateY"] = 0,
            ["dbmHUDShowInteract"] = true,
            ["enableTooltips"] = true,
            ["enableMapIcons"] = true,
            ["trackerFadeQuestItemButtons"] = false,
            ["debugEnabledPrint"] = false,
            ["questieShutUp"] = false,
            ["migrationVersion"] = {
                ["NikipeDreadnaught"] = 10,
                ["Nikipe UI"] = 3,
            },
            ["trackerShowQuestLevel"] = true,
            ["trackerFadeMinMaxButtons"] = true,
            ["dbmHUDEnable"] = false,
            ["enableTooltipsQuestLevel"] = true,
            ["trackerBackgroundFader"] = false,
            ["trackerFontObjective"] = "Gotham Narrow Ultra",
            ["trackerQuestPadding"] = 4,
            ["trackerSortObjectives"] = "byProximity",
            ["autoTrackQuests"] = true,
            ["trackerEnabled"] = true,
            ["globalTrackerLocation"] = true,
            ["questMinimapObjectiveColors"] = true,
            ["trackerSetpoint"] = "AUTO",
            ["trackerLocked"] = true,
            ["hookTracking"] = true,
            ["clusterLevelHotzone"] = 70,
            ["mapCoordinatePrecision"] = 1,
            ["trackerColorObjectives"] = "whiteAndGreen",
            ["fadeOverPlayerLevel"] = 0.5,
        },
        ["profileKeys"] = {
            ["Nikipe - Dreadnaught"] = "Default",
        },
        ["dbCompiledOnVersion"] = "v6.8.2",
        ["npcBin"] = "",
        ["itemPtrs"] = "",
        ["profiles"] = {
            ["Default"] = {
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
    QuestieTracker:Update()
end
