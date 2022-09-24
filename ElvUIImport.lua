--initialising dependencies
local E, L, V, P, G = unpack(ElvUI);
local NUI = E:GetModule("Nikipe UI");
--handling ElvUI import

function NUI:SetupLayout(layout)
	--LAYOUT GOES HERE
	if E.Retail then
		E.db["WT"]["announcement"]["goodbye"]["text"] = "Thank you <3"
		E.db["WT"]["announcement"]["interrupt"]["enable"] = false
		E.db["WT"]["announcement"]["interrupt"]["player"]["enable"] = false
		E.db["WT"]["announcement"]["keystone"]["enable"] = false
		E.db["WT"]["announcement"]["thanks"]["enable"] = false
		E.db["WT"]["announcement"]["threatTransfer"]["enable"] = false
		E.db["WT"]["announcement"]["utility"]["spells"]["190336"]["enable"] = false
		E.db["WT"]["announcement"]["utility"]["spells"]["29893"]["enable"] = false
		E.db["WT"]["combat"]["combatAlert"]["enterText"] = "HERE WE GO"
		E.db["WT"]["combat"]["combatAlert"]["leaveText"] = "WE OUT"
		E.db["WT"]["combat"]["raidMarkers"]["enable"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar2"]["anchor"] = "TOPRIGHT"
		E.db["WT"]["item"]["extraItemsBar"]["enable"] = false
		E.db["WT"]["item"]["inspect"]["levelText"]["name"] = "Gotham Narrow Ultra"
		E.db["WT"]["maps"]["rectangleMinimap"]["heightPercentage"] = 1
		E.db["WT"]["misc"]["gameBar"]["enable"] = false
		E.db["WT"]["quest"]["paragonReputation"]["text"] = "PARAGONPLUS"
		E.db["WT"]["social"]["chatBar"]["enable"] = false
		E.db["WT"]["social"]["friendList"]["textures"]["factionIcon"] = true
		E.db["WT"]["social"]["friendList"]["useNoteAsName"] = true

		--private settings import
		E.private["WT"]["combat"]["talentManager"]["pvpTalent"] = true
		E.private["WT"]["maps"]["instanceDifficulty"]["enable"] = true
		E.private["WT"]["maps"]["minimapButtons"]["backdrop"] = false
		E.private["WT"]["maps"]["minimapButtons"]["buttonSize"] = 25
		E.private["WT"]["maps"]["minimapButtons"]["buttonsPerRow"] = 8
		E.private["WT"]["maps"]["minimapButtons"]["calendar"] = true
		E.private["WT"]["maps"]["minimapButtons"]["garrison"] = true
		E.private["WT"]["maps"]["minimapButtons"]["spacing"] = 0
		E.private["WT"]["misc"]["autoScreenshot"] = true
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["texture"] = "Melli"
		E.private["WT"]["skins"]["shadow"] = false
	end

	--normal ElvUI settings
	E.db["actionbar"]["bar1"]["backdropSpacing"] = 1
	E.db["actionbar"]["bar1"]["buttonSize"] = 28
	E.db["actionbar"]["bar1"]["buttonSpacing"] = 1
	E.db["actionbar"]["bar1"]["countFont"] = "Univers"
	E.db["actionbar"]["bar1"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar1"]["countFontSize"] = 12
	E.db["actionbar"]["bar1"]["enabled"] = false
	E.db["actionbar"]["bar1"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["bar1"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar1"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["bar1"]["inheritGlobalFade"] = true
	E.db["actionbar"]["bar1"]["macroFont"] = "Univers"
	E.db["actionbar"]["bar1"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar1"]["macroFontSize"] = 12
	E.db["actionbar"]["bar1"]["macroTextPosition"] = "BOTTOM"
	E.db["actionbar"]["bar1"]["macroTextYOffset"] = 0
	E.db["actionbar"]["bar1"]["macrotext"] = true
	E.db["actionbar"]["bar10"]["countFont"] = "Univers"
	E.db["actionbar"]["bar10"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar10"]["countFontSize"] = 12
	E.db["actionbar"]["bar10"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["bar10"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar10"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["bar10"]["macroFont"] = "Univers"
	E.db["actionbar"]["bar10"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar10"]["macroFontSize"] = 12
	E.db["actionbar"]["bar2"]["buttonSize"] = 28
	E.db["actionbar"]["bar2"]["buttonSpacing"] = 1
	E.db["actionbar"]["bar2"]["buttonsPerRow"] = 6
	E.db["actionbar"]["bar2"]["countFont"] = "Univers"
	E.db["actionbar"]["bar2"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar2"]["countFontSize"] = 12
	E.db["actionbar"]["bar2"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["bar2"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar2"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["bar2"]["macroFont"] = "Univers"
	E.db["actionbar"]["bar2"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar2"]["macroFontSize"] = 12
	E.db["actionbar"]["bar2"]["macroTextPosition"] = "BOTTOM"
	E.db["actionbar"]["bar2"]["macrotext"] = true
	E.db["actionbar"]["bar2"]["mouseover"] = true
	E.db["actionbar"]["bar3"]["backdropSpacing"] = 4
	E.db["actionbar"]["bar3"]["buttonSize"] = 28
	E.db["actionbar"]["bar3"]["buttonSpacing"] = 1
	E.db["actionbar"]["bar3"]["buttons"] = 12
	E.db["actionbar"]["bar3"]["buttonsPerRow"] = 12
	E.db["actionbar"]["bar3"]["countFont"] = "Univers"
	E.db["actionbar"]["bar3"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar3"]["countFontSize"] = 12
	E.db["actionbar"]["bar3"]["enabled"] = false
	E.db["actionbar"]["bar3"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["bar3"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar3"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["bar3"]["macroFont"] = "Univers"
	E.db["actionbar"]["bar3"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar3"]["macroFontSize"] = 12
	E.db["actionbar"]["bar3"]["macroTextPosition"] = "BOTTOM"
	E.db["actionbar"]["bar3"]["macroTextYOffset"] = 0
	E.db["actionbar"]["bar3"]["macrotext"] = true
	E.db["actionbar"]["bar4"]["backdrop"] = false
	E.db["actionbar"]["bar4"]["buttonSize"] = 28
	E.db["actionbar"]["bar4"]["buttonSpacing"] = 1
	E.db["actionbar"]["bar4"]["buttonsPerRow"] = 6
	E.db["actionbar"]["bar4"]["countFont"] = "Univers"
	E.db["actionbar"]["bar4"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar4"]["countFontSize"] = 12
	E.db["actionbar"]["bar4"]["enabled"] = false
	E.db["actionbar"]["bar4"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["bar4"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar4"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["bar4"]["macroFont"] = "Univers"
	E.db["actionbar"]["bar4"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar4"]["macroFontSize"] = 12
	E.db["actionbar"]["bar4"]["macroTextPosition"] = "BOTTOM"
	E.db["actionbar"]["bar4"]["macroTextYOffset"] = 0
	E.db["actionbar"]["bar4"]["macrotext"] = true
	E.db["actionbar"]["bar4"]["mouseover"] = true
	E.db["actionbar"]["bar5"]["buttonSize"] = 28
	E.db["actionbar"]["bar5"]["buttonSpacing"] = 1
	E.db["actionbar"]["bar5"]["buttons"] = 12
	E.db["actionbar"]["bar5"]["buttonsPerRow"] = 12
	E.db["actionbar"]["bar5"]["countFont"] = "Univers"
	E.db["actionbar"]["bar5"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar5"]["countFontSize"] = 12
	E.db["actionbar"]["bar5"]["enabled"] = false
	E.db["actionbar"]["bar5"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["bar5"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar5"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["bar5"]["macroFont"] = "Univers"
	E.db["actionbar"]["bar5"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar5"]["macroFontSize"] = 12
	E.db["actionbar"]["bar5"]["macroTextPosition"] = "BOTTOM"
	E.db["actionbar"]["bar5"]["macroTextYOffset"] = 0
	E.db["actionbar"]["bar5"]["macrotext"] = true
	E.db["actionbar"]["bar6"]["buttonSize"] = 25
	E.db["actionbar"]["bar6"]["buttonSpacing"] = 1
	E.db["actionbar"]["bar6"]["buttons"] = 8
	E.db["actionbar"]["bar6"]["buttonsPerRow"] = 8
	E.db["actionbar"]["bar6"]["countFont"] = "Univers"
	E.db["actionbar"]["bar6"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar6"]["countFontSize"] = 12
	E.db["actionbar"]["bar6"]["enabled"] = true
	E.db["actionbar"]["bar6"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["bar6"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar6"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["bar6"]["macroFont"] = "Univers"
	E.db["actionbar"]["bar6"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar6"]["macroFontSize"] = 12
	E.db["actionbar"]["bar6"]["macroTextPosition"] = "BOTTOM"
	E.db["actionbar"]["bar6"]["macroTextYOffset"] = 0
	E.db["actionbar"]["bar6"]["macrotext"] = true
	E.db["actionbar"]["bar7"]["countFont"] = "Univers"
	E.db["actionbar"]["bar7"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar7"]["countFontSize"] = 12
	E.db["actionbar"]["bar7"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["bar7"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar7"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["bar7"]["macroFont"] = "Univers"
	E.db["actionbar"]["bar7"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar7"]["macroFontSize"] = 12
	E.db["actionbar"]["bar8"]["countFont"] = "Univers"
	E.db["actionbar"]["bar8"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar8"]["countFontSize"] = 12
	E.db["actionbar"]["bar8"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["bar8"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar8"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["bar8"]["macroFont"] = "Univers"
	E.db["actionbar"]["bar8"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar8"]["macroFontSize"] = 12
	E.db["actionbar"]["bar9"]["countFont"] = "Univers"
	E.db["actionbar"]["bar9"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar9"]["countFontSize"] = 12
	E.db["actionbar"]["bar9"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["bar9"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar9"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["bar9"]["macroFont"] = "Univers"
	E.db["actionbar"]["bar9"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar9"]["macroFontSize"] = 12
	E.db["actionbar"]["barPet"]["backdrop"] = false
	E.db["actionbar"]["barPet"]["buttonSize"] = 28
	E.db["actionbar"]["barPet"]["buttonsPerRow"] = 10
	E.db["actionbar"]["barPet"]["countFont"] = "Univers"
	E.db["actionbar"]["barPet"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["barPet"]["countFontSize"] = 12
	E.db["actionbar"]["barPet"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["barPet"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["barPet"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["cooldown"]["checkSeconds"] = true
	E.db["actionbar"]["cooldown"]["fonts"]["enable"] = true
	E.db["actionbar"]["cooldown"]["fonts"]["font"] = "GothamNarrowUltra"
	E.db["actionbar"]["cooldown"]["fonts"]["fontSize"] = 14
	E.db["actionbar"]["cooldown"]["threshold"] = -1
	E.db["actionbar"]["extraActionButton"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["extraActionButton"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["extraActionButton"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["font"] = "Univers"
	E.db["actionbar"]["fontOutline"] = "OUTLINE"
	E.db["actionbar"]["fontSize"] = 12
	E.db["actionbar"]["globalFadeAlpha"] = 1
	E.db["actionbar"]["microbar"]["enabled"] = true
	E.db["actionbar"]["microbar"]["mouseover"] = true
	E.db["actionbar"]["stanceBar"]["enabled"] = false
	E.db["actionbar"]["stanceBar"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["stanceBar"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["stanceBar"]["hotkeyFontSize"] = 12
	E.db["actionbar"]["useDrawSwipeOnCharges"] = true
	E.db["actionbar"]["vehicleExitButton"]["hotkeyFont"] = "Univers"
	E.db["actionbar"]["vehicleExitButton"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["vehicleExitButton"]["hotkeyFontSize"] = 12
	E.db["auras"]["buffs"]["countFont"] = "Univers"
	E.db["auras"]["buffs"]["countFontOutline"] = "OUTLINE"
	E.db["auras"]["buffs"]["countFontSize"] = 14
	E.db["auras"]["buffs"]["countXOffset"] = -8
	E.db["auras"]["buffs"]["countYOffset"] = -15
	E.db["auras"]["buffs"]["horizontalSpacing"] = 3
	E.db["auras"]["buffs"]["timeFont"] = "Univers"
	E.db["auras"]["buffs"]["timeFontOutline"] = "OUTLINE"
	E.db["auras"]["buffs"]["timeFontSize"] = 14
	E.db["auras"]["buffs"]["timeYOffset"] = 8
	E.db["auras"]["cooldown"]["checkSeconds"] = true
	E.db["auras"]["cooldown"]["threshold"] = -1
	E.db["auras"]["debuffs"]["countFont"] = "Univers"
	E.db["auras"]["debuffs"]["countFontOutline"] = "OUTLINE"
	E.db["auras"]["debuffs"]["countFontSize"] = 14
	E.db["auras"]["debuffs"]["countXOffset"] = -8
	E.db["auras"]["debuffs"]["countYOffset"] = 24
	E.db["auras"]["debuffs"]["horizontalSpacing"] = 3
	E.db["auras"]["debuffs"]["timeFont"] = "Univers"
	E.db["auras"]["debuffs"]["timeFontOutline"] = "OUTLINE"
	E.db["auras"]["debuffs"]["timeFontSize"] = 14
	E.db["auras"]["debuffs"]["timeYOffset"] = 8
	E.db["bags"]["bagBar"]["font"] = "Nimrod MT"
	E.db["bags"]["bagSize"] = 33
	E.db["bags"]["cooldown"]["fonts"]["enable"] = true
	E.db["bags"]["cooldown"]["fonts"]["font"] = "GothamNarrowUltra"
	E.db["bags"]["countFont"] = "Univers"
	E.db["bags"]["countFontOutline"] = "OUTLINE"
	E.db["bags"]["countFontSize"] = 12
	E.db["bags"]["itemInfoFont"] = "Univers"
	E.db["bags"]["itemInfoFontOutline"] = "OUTLINE"
	E.db["bags"]["itemLevelFont"] = "Univers"
	E.db["bags"]["itemLevelFontOutline"] = "OUTLINE"
	E.db["bags"]["itemLevelFontSize"] = 12
	E.db["bags"]["moneyFormat"] = "BLIZZARD"
	E.db["bags"]["vendorGrays"]["enable"] = true
	E.db["chat"]["chatHistory"] = false
	E.db["chat"]["editBoxPosition"] = "ABOVE_CHAT"
	E.db["chat"]["emotionIcons"] = false
	E.db["chat"]["font"] = "Univers"
	E.db["chat"]["fontSize"] = 12
	E.db["chat"]["lfgIcons"] = false
	E.db["chat"]["panelBackdrop"] = "HIDEBOTH"
	E.db["chat"]["panelHeight"] = 210
	E.db["chat"]["panelHeightRight"] = 266
	E.db["chat"]["panelWidth"] = 450
	E.db["chat"]["panelWidthRight"] = 230
	E.db["chat"]["separateSizes"] = true
	E.db["chat"]["tabFont"] = "Univers"
	E.db["chat"]["tabFontOutline"] = "OUTLINE"
	E.db["chat"]["tabFontSize"] = 11
	E.db["convertPages"] = true
	E.db["cooldown"]["checkSeconds"] = true
	E.db["cooldown"]["fonts"]["enable"] = true
	E.db["cooldown"]["fonts"]["font"] = "Univers"
	E.db["cooldown"]["secondsColor"]["b"] = 1
	E.db["cooldown"]["threshold"] = -1
	E.db["databars"]["azerite"]["enable"] = false
	E.db["databars"]["azerite"]["font"] = "Univers"
	E.db["databars"]["azerite"]["fontOutline"] = "OUTLINE"
	E.db["databars"]["azerite"]["fontSize"] = 16
	E.db["databars"]["azerite"]["height"] = 5
	E.db["databars"]["azerite"]["textFormat"] = "PERCENT"
	E.db["databars"]["azerite"]["width"] = 340
	E.db["databars"]["colors"]["experience"]["a"] = 1
	E.db["databars"]["colors"]["factionColors"][9]["b"] = 0.72941176470588
	E.db["databars"]["colors"]["factionColors"][9]["g"] = 0.54901960784314
	E.db["databars"]["colors"]["factionColors"][9]["r"] = 0.95686274509804
	E.db["databars"]["colors"]["honor"]["b"] = 0
	E.db["databars"]["colors"]["honor"]["g"] = 0
	E.db["databars"]["colors"]["honor"]["r"] = 1
	E.db["databars"]["colors"]["useCustomFactionColors"] = true
	E.db["databars"]["customTexture"] = true
	E.db["databars"]["experience"]["enable"] = false
	E.db["databars"]["experience"]["font"] = "Univers"
	E.db["databars"]["experience"]["fontOutline"] = "OUTLINE"
	E.db["databars"]["experience"]["height"] = 5
	E.db["databars"]["experience"]["textFormat"] = "PERCENT"
	E.db["databars"]["experience"]["width"] = 340
	E.db["databars"]["honor"]["font"] = "Gotham Narrow Ultra"
	E.db["databars"]["honor"]["fontOutline"] = "OUTLINE"
	E.db["databars"]["honor"]["height"] = 177
	E.db["databars"]["honor"]["orientation"] = "VERTICAL"
	E.db["databars"]["honor"]["width"] = 15
	E.db["databars"]["reputation"]["enable"] = true
	E.db["databars"]["reputation"]["font"] = "Gotham Narrow Ultra"
	E.db["databars"]["reputation"]["fontOutline"] = "OUTLINE"
	E.db["databars"]["reputation"]["fontSize"] = 16
	E.db["databars"]["reputation"]["height"] = 177
	E.db["databars"]["reputation"]["orientation"] = "VERTICAL"
	E.db["databars"]["reputation"]["rewardPosition"] = "TOP"
	E.db["databars"]["reputation"]["width"] = 15
	E.db["databars"]["statusbar"] = "mMediaTag O1"
	E.db["databars"]["threat"]["enable"] = false
	E.db["databars"]["transparent"] = false
	E.db["datatexts"]["font"] = "Univers"
	E.db["datatexts"]["fontOutline"] = "OUTLINE"
	E.db["datatexts"]["fontSize"] = 14
	E.db["datatexts"]["panels"]["LeftChatDataPanel"]["2"] = "System"
	E.db["datatexts"]["panels"]["LeftChatDataPanel"]["enable"] = false
	E.db["datatexts"]["panels"]["LeftMiniPanel"] = "Time"
	E.db["datatexts"]["panels"]["MinimapPanel"][1] = "Gold"
	E.db["datatexts"]["panels"]["MinimapPanel"][2] = "Time"
	E.db["datatexts"]["panels"]["MinimapPanel"]["1"] = "Time"
	E.db["datatexts"]["panels"]["MinimapPanel"]["2"] = "Time"
	E.db["datatexts"]["panels"]["MinimapPanel"]["backdrop"] = false
	E.db["datatexts"]["panels"]["MinimapPanel"]["border"] = false
	E.db["datatexts"]["panels"]["RightChatDataPanel"]["enable"] = false
	E.db["datatexts"]["panels"]["RightMiniPanel"] = "ElvUI Config"
	E.db["general"]["afk"] = false
	E.db["general"]["altPowerBar"]["font"] = "Univers"
	E.db["general"]["altPowerBar"]["fontSize"] = 14
	E.db["general"]["altPowerBar"]["statusBar"] = "Melli"
	E.db["general"]["autoAcceptInvite"] = true
	E.db["general"]["autoRepair"] = "PLAYER"
	E.db["general"]["autoTrackReputation"] = true
	E.db["general"]["backdropfadecolor"]["a"] = 0.80000001192093
	E.db["general"]["backdropfadecolor"]["b"] = 0.058823529411765
	E.db["general"]["backdropfadecolor"]["g"] = 0.058823529411765
	E.db["general"]["backdropfadecolor"]["r"] = 0.058823529411765
	E.db["general"]["bottomPanel"] = false
	E.db["general"]["font"] = "Gotham Narrow Ultra"
	E.db["general"]["itemLevel"]["itemLevelFont"] = "Nimrod MT"
	E.db["general"]["loginmessage"] = false
	E.db["general"]["lootRoll"]["nameFont"] = "Univers"
	E.db["general"]["lootRoll"]["statusBarTexture"] = "Melli"
	E.db["general"]["minimap"]["icons"]["lfgEye"]["yOffset"] = 7
	E.db["general"]["minimap"]["icons"]["queueStatus"]["font"] = "Gotham Narrow Ultra"
	E.db["general"]["minimap"]["icons"]["queueStatus"]["fontSize"] = 12
	E.db["general"]["minimap"]["icons"]["queueStatus"]["yOffset"] = 0
	E.db["general"]["minimap"]["locationFont"] = "Gotham Narrow Ultra"
	E.db["general"]["objectiveFrameHeight"] = 450
	E.db["general"]["totems"]["enable"] = false
	E.db["general"]["totems"]["growthDirection"] = "HORIZONTAL"
	E.db["general"]["totems"]["spacing"] = 1
	E.db["general"]["valuecolor"]["b"] = 0.72941017150879
	E.db["general"]["valuecolor"]["g"] = 0.54901838302612
	E.db["general"]["valuecolor"]["r"] = 0.95686066150665
	E.db["mMediaTag"]["mPluginVersion"] = "2.80"
	E.db["mMediaTag"]["mRoleSymbols"]["dd"] = "firenew1"
	E.db["mMediaTag"]["mRoleSymbols"]["heal"] = "heart1"
	E.db["mMediaTag"]["mRoleSymbols"]["tank"] = "tank1"
	E.db["mMediaTag"]["mTIcon"] = false
	E.db["mMediaTag"]["mTags"]["afkname"] = "AFK5"
	E.db["mMediaTag"]["mTags"]["afkpath"] = "Interface\\AddOns\\ElvUI_mMediaTag\\media\\misc\\afk5.tga"
	E.db["mMediaTag"]["mTags"]["dndname"] = "DND5"
	E.db["mMediaTag"]["mTags"]["dndpath"] = "Interface\\AddOns\\ElvUI_mMediaTag\\media\\misc\\dnd5.tga"
	E.db["mMediaTag"]["mTags"]["ghostname"] = "SKULL1"
	E.db["mMediaTag"]["mTags"]["ghostpath"] = "Interface\\AddOns\\ElvUI_mMediaTag\\media\\misc\\skull1.tga"
	E.db["mMediaTag"]["mTags"]["skullname"] = "SKULL6"
	E.db["mMediaTag"]["mTags"]["skullpath"] = "Interface\\AddOns\\ElvUI_mMediaTag\\media\\misc\\skull6.tga"
	if not E.db.movers then E.db.movers = {} end
	E.db["movers"]["BNETMover"] = "TOP,UIParent,TOP,0,-4"
	E.db["movers"]["BelowMinimapContainerMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-322,-199"
	E.db["movers"]["BossButton"] = "BOTTOM,UIParent,BOTTOM,316,221"
	E.db["movers"]["BuffsMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-292,-4"
	E.db["movers"]["DebuffsMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-292,-150"
	E.db["movers"]["DurabilityFrameMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-254,-202"
	E.db["movers"]["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,197"
	E.db["movers"]["ElvUF_PartyMover"] = "TOPLEFT,UIParent,TOPLEFT,358,-401"
	E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,UIParent,BOTTOM,-308,340"
	E.db["movers"]["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,258"
	E.db["movers"]["ElvUF_RaidMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,4,248"
	E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,308,322"
	E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,308,340"
	E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,285"
	E.db["movers"]["ElvUIBagMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-4,293"
	E.db["movers"]["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-192,21"
	E.db["movers"]["MawBuffsBelowMinimapMover"] = "TOP,UIParent,TOP,234,-85"
	E.db["movers"]["MicrobarMover"] = "TOP,UIParent,TOP,235,-4"
	E.db["movers"]["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,0"
	E.db["movers"]["ObjectiveFrameMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-48,-4"
	E.db["movers"]["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-177,21"
	E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-357,218"
	E.db["movers"]["SquareMinimapButtonBarMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-4,296"
	E.db["movers"]["TargetPowerBarMover"] = "BOTTOM,UIParent,BOTTOM,310,263"
	E.db["movers"]["VehicleSeatMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-319,-231"
	E.db["movers"]["WTMinimapButtonBarAnchor"] = "TOPLEFT,UIParent,TOPLEFT,4,-4"
	E.db["movers"]["ZoneAbility"] = "TOP,UIParent,TOP,77,-515"
	E.db["nameplates"]["statusbar"] = "KMT63"
	E.db["tooltip"]["cursorAnchor"] = true
	E.db["tooltip"]["font"] = "Gotham Narrow Ultra"
	E.db["tooltip"]["headerFont"] = "Gotham Narrow Ultra"
	E.db["tooltip"]["visibility"]["combatOverride"] = "SHIFT"
	E.db["unitframe"]["colors"]["colorhealthbyvalue"] = false
	E.db["unitframe"]["colors"]["healthclass"] = true
	E.db["unitframe"]["font"] = "Gotham Narrow Ultra"
	E.db["unitframe"]["fontOutline"] = "THICKOUTLINE"
	E.db["unitframe"]["fontSize"] = 15
	E.db["unitframe"]["statusbar"] = "mMediaTag O1"
	E.db["unitframe"]["units"]["party"]["debuffs"]["anchorPoint"] = "LEFT"
	E.db["unitframe"]["units"]["party"]["health"]["text_format"] = ""
	E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""
	E.db["unitframe"]["units"]["party"]["roleIcon"]["position"] = "LEFT"
	E.db["unitframe"]["units"]["party"]["roleIcon"]["size"] = 25
	E.db["unitframe"]["units"]["party"]["roleIcon"]["xOffset"] = -30
	E.db["unitframe"]["units"]["party"]["showPlayer"] = false
	E.db["unitframe"]["units"]["player"]["RestIcon"]["enable"] = false
	E.db["unitframe"]["units"]["player"]["aurabar"]["enable"] = false
	E.db["unitframe"]["units"]["player"]["buffs"]["attachTo"] = "FRAME"
	E.db["unitframe"]["units"]["player"]["castbar"]["enable"] = false
	E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 220
	E.db["unitframe"]["units"]["player"]["classbar"]["enable"] = false
	E.db["unitframe"]["units"]["player"]["debuffs"]["attachTo"] = "BUFFS"
	E.db["unitframe"]["units"]["player"]["health"]["position"] = "BOTTOMRIGHT"
	E.db["unitframe"]["units"]["player"]["health"]["text_format"] = "[health:current:shortvalue]"
	E.db["unitframe"]["units"]["player"]["health"]["xOffset"] = 3
	E.db["unitframe"]["units"]["player"]["health"]["yOffset"] = -17
	E.db["unitframe"]["units"]["player"]["height"] = 26
	E.db["unitframe"]["units"]["player"]["name"]["position"] = "TOPLEFT"
	E.db["unitframe"]["units"]["player"]["name"]["text_format"] = "[name:short]"
	E.db["unitframe"]["units"]["player"]["name"]["yOffset"] = 15
	E.db["unitframe"]["units"]["player"]["power"]["detachedWidth"] = 74
	E.db["unitframe"]["units"]["player"]["power"]["enable"] = false
	E.db["unitframe"]["units"]["player"]["raidRoleIcons"]["position"] = "TOPRIGHT"
	E.db["unitframe"]["units"]["player"]["raidRoleIcons"]["yOffset"] = 5
	E.db["unitframe"]["units"]["player"]["width"] = 220
	E.db["unitframe"]["units"]["raid"]["health"]["position"] = "TOP"
	E.db["unitframe"]["units"]["raid"]["name"]["position"] = "BOTTOM"
	E.db["unitframe"]["units"]["raid"]["roleIcon"]["position"] = "TOPLEFT"
	E.db["unitframe"]["units"]["raid40"]["health"]["text_format"] = ""
	E.db["unitframe"]["units"]["raid40"]["height"] = 30
	E.db["unitframe"]["units"]["raid40"]["name"]["text_format"] = "[name:short]"
	E.db["unitframe"]["units"]["raid40"]["width"] = 100
	E.db["unitframe"]["units"]["target"]["aurabar"]["enable"] = false
	E.db["unitframe"]["units"]["target"]["buffs"]["countFont"] = "Nimrod MT"
	E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = 15
	E.db["unitframe"]["units"]["target"]["castbar"]["width"] = 220
	E.db["unitframe"]["units"]["target"]["health"]["position"] = "BOTTOMRIGHT"
	E.db["unitframe"]["units"]["target"]["health"]["text_format"] = "[health:current:shortvalue]"
	E.db["unitframe"]["units"]["target"]["health"]["xOffset"] = 3
	E.db["unitframe"]["units"]["target"]["health"]["yOffset"] = -17
	E.db["unitframe"]["units"]["target"]["height"] = 26
	E.db["unitframe"]["units"]["target"]["name"]["position"] = "TOPRIGHT"
	E.db["unitframe"]["units"]["target"]["name"]["text_format"] = "[name:short] "
	E.db["unitframe"]["units"]["target"]["name"]["xOffset"] = 7
	E.db["unitframe"]["units"]["target"]["name"]["yOffset"] = 15
	E.db["unitframe"]["units"]["target"]["power"]["detachFromFrame"] = true
	E.db["unitframe"]["units"]["target"]["power"]["detachedWidth"] = 220
	E.db["unitframe"]["units"]["target"]["power"]["enable"] = false
	E.db["unitframe"]["units"]["target"]["width"] = 220
	E.db["unitframe"]["units"]["targettarget"]["height"] = 26
	E.db["unitframe"]["units"]["targettarget"]["name"]["text_format"] = "[name:short]"
	E.db["unitframe"]["units"]["targettarget"]["power"]["enable"] = false


	--global settings import
	E.global["datatexts"]["settings"]["Gold"]["goldCoins"] = false
	E.global["datatexts"]["settings"]["Gold"]["goldFormat"] = "SHORTINT"


	--private settings import
	E.private["general"]["dmgfont"] = "Gotham Narrow Ultra"
	E.private["general"]["glossTex"] = "mMediaTag O1"
	E.private["general"]["namefont"] = "Gotham Narrow Ultra"
	E.private["general"]["nameplateFont"] = "Gotham Narrow Ultra"
	E.private["general"]["nameplateLargeFont"] = "Gotham Narrow Ultra"
	E.private["general"]["normTex"] = "mMediaTag O1"
	E.private["install_complete"] = 12.77
	E.private["nameplates"]["enable"] = false
	E.private["skins"]["parchmentRemoverEnable"] = true

	--classic only stuff
	if E.Wrath then
		E.db["databars"]["experience"]["enable"] = true
		E.db["databars"]["experience"]["textFormat"] = "NONE"
		E.db["databars"]["colors"]["experience"]["a"] = 1
		E.db["databars"]["experience"]["font"] = "Gotham Narrow Ultra"
		E.db["databars"]["experience"]["fontOutline"] = "OUTLINE"
		E.db["databars"]["experience"]["height"] = 177
		E.db["databars"]["experience"]["orientation"] = "VERTICAL"
		E.db["databars"]["experience"]["width"] = 15
		if not E.db.movers then E.db.movers = {} end
		E.db["movers"]["ExperienceBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-191,21"
	end

	if E.Classic then
		E.db["databars"]["experience"]["enable"] = true
		E.db["databars"]["experience"]["textFormat"] = "NONE"
		E.db["databars"]["colors"]["experience"]["a"] = 1
		E.db["databars"]["experience"]["font"] = "Gotham Narrow Ultra"
		E.db["databars"]["experience"]["fontOutline"] = "OUTLINE"
		E.db["databars"]["experience"]["height"] = 177
		E.db["databars"]["experience"]["orientation"] = "VERTICAL"
		E.db["databars"]["experience"]["width"] = 15
		if not E.db.movers then E.db.movers = {} end
		E.db["movers"]["ExperienceBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-191,21"
	end

	--Niklas don't forget to handle movers
	--if not E.db.movers then E.db.movers = {} end
	--smiley

	--[[
		--If you want to modify the base layout according to
		-- certain conditions then this is how you could do it
		if layout == "tank" then
			--Make some changes to the layout posted above
		elseif layout == "dps" then
			--Make some other changes
		elseif layout == "healer" then
			--Make some different changes
		end
	--]]


	--[[
	--	This section at the bottom is just to update ElvUI and display a message
	--]]
	--Update ElvUI
	E:UpdateAll(true)
	--Show message about layout being set
	PluginInstallStepComplete.message = "Layout Set"
	PluginInstallStepComplete:Show()
end
