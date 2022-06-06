--Don't worry about this
local addon, ns = ...
local Version = GetAddOnMetadata(addon, "Version")

--Cache Lua / WoW API
local format = string.format
local GetCVarBool = GetCVarBool
local ReloadUI = ReloadUI
local StopMusic = StopMusic

-- These are things we do not cache
-- GLOBALS: PluginInstallStepComplete, PluginInstallFrame

--Change this line and use a unique name for your plugin.
local MyPluginName = "Nikipe UI"
--Create references to ElvUI internals
local E, L, V, P, G = unpack(ElvUI)

--Create reference to LibElvUIPlugin
local EP = LibStub("LibElvUIPlugin-1.0")

--Create a new ElvUI module so ElvUI can handle initialization when ready
local NUI = E:NewModule(MyPluginName, "AceConsole-3.0", "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0");

--This function is executed when you press "Skip Process" or "Finished" in the installer.
local function InstallComplete()
	if GetCVarBool("Sound_EnableMusic") then
		StopMusic()
	end

	--Set a variable tracking the version of the addon when layout was installed
	E.db[MyPluginName].install_version = Version

	ReloadUI()
end

--This is the data we pass on to the ElvUI Plugin Installer.
--The Plugin Installer is reponsible for displaying the install guide for this layout.
local InstallerData = {
	Title = format("|cff4beb2c%s %s|r", MyPluginName, "Installation"),
	Name = MyPluginName,
	tutorialImage = "Interface\\AddOns\\NikipeUI\\logo.tga", --tutorialImage = Interface\\AddOns\\MyAddOn\\logo.tga", --If you have a logo you want to use, otherwise it uses the one from ElvUI

	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetFormattedText("Welcome to the installation for %s.", MyPluginName)
			PluginInstallFrame.Desc1:SetText("This installation process will guide you through a few steps and apply settings to your current ElvUI profile. If you want to be able to go back to your original settings then create a new profile before going through this installation process.")
			PluginInstallFrame.Desc2:SetText("Please press the continue button if you wish to go through the installation process, otherwise click the 'Skip Process' button.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Skip Process")
		end,
		[2] = function()
			PluginInstallFrame.SubTitle:SetText("Layout")
			PluginInstallFrame.Desc1:SetText("Click the button below to install the ElvUI layout into your current profile.")
			PluginInstallFrame.Desc2:SetText("Importance: |cff07D400High|r")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() NUI:SetupLayout("tank") end)
			PluginInstallFrame.Option1:SetText("Nikipe UI")
			--PluginInstallFrame.Option2:Show()
			--PluginInstallFrame.Option2:SetScript("OnClick", function() SetupLayout("healer") end)
			--PluginInstallFrame.Option2:SetText("Healer")
			--PluginInstallFrame.Option3:Show()
			--PluginInstallFrame.Option3:SetScript("OnClick", function() SetupLayout("dps") end)
			--PluginInstallFrame.Option3:SetText("DPS")
		end,
		[E.Retail and 3] = function()
			PluginInstallFrame.SubTitle:SetFormattedText("Mythic+ Addons")
			PluginInstallFrame.Desc1:SetText("Import various profiles for mythic+ addons.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() NUI:SetWarpDepleteProfile()
				E:Print(L["'WarpDeplete' profile has been set."])
				PluginInstallStepComplete.message = "WarpDeplete Profile set"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option1:SetText("WarpDeplete")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() NUI:SetOmniCDProfile()
				E:Print(L["'OmniCD' profile has been set."])
				PluginInstallStepComplete.message = "OmniCD Profile set"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option2:SetText("OmniCD")
			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() NUI:SetBigWigsProfile()
				E:Print(L["'Bigwigs' profile has been set."])
				PluginInstallStepComplete.message = "BigWigs Profile set"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option3:SetText("BigWigs")
		end,
		[E.TBC and 3] = function()
			PluginInstallFrame.SubTitle:SetFormattedText("Classic Addons")
			PluginInstallFrame.Desc1:SetText("Import various profiles for classic WoW The Burning Crusade addons.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() NUI:SetWarpDepleteProfile()
				E:Print(L["'Questie' profile has been set."])
				PluginInstallStepComplete.message = "Questie Profile set"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option1:SetText("Questie")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() NUI:SetOmniCDProfile()
				E:Print(L["OmniCD profile has been set."])
				PluginInstallStepComplete.message = "OmniCD Profile set"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option2:SetText("OmniCD")
			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() NUI:SetBigWigsProfile()
				E:Print(L["BigWigs profile has been set."])
				PluginInstallStepComplete.message = "BigWigs Profile set"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option3:SetText("BigWigs")
		end,
		[E.Classic and 3] = function()
			PluginInstallFrame.SubTitle:SetFormattedText("Classic Addons")
			PluginInstallFrame.Desc1:SetText("Import various profiles for classic era / Season of Mastery addons.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() NUI:SetQuestieProfile()
				E:Print(L["'Questie' profile has been set."])
				PluginInstallStepComplete.message = "Questie Profile set"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option1:SetText("Questie")
		end,
		[4] = function()
			PluginInstallFrame.SubTitle:SetFormattedText("Nameplates")
			PluginInstallFrame.Desc1:SetText("Import the Best Plater Profile. All credits for this go to WEBS -Y2J. Check out his Wago.io profile.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() NUI:SetPlaterProfile()
				E:Print(L["'Plater' profile has been set."])
				PluginInstallStepComplete.message = "Plater Profile set"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option1:SetText("Plater")
		end,
		[5] = function()
			PluginInstallFrame.SubTitle:SetText("Details")
			PluginInstallFrame.Desc1:SetText("Import my Details Profile")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() NUI:SetDetailsProfile()
				E:Print(L["'Details' profile has been set."])
				PluginInstallStepComplete.message = "Details Profile set"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option1:SetText("Details")
		end,
		[6] = function()
			PluginInstallFrame.SubTitle:SetText("WeakAuras")
			PluginInstallFrame.Desc1:SetText("Import some of the best WeakAuras for mythic+.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() NUI:SetWeakAuras()
				E:Print(L["'WeakAuras' imported."])
				PluginInstallStepComplete.message = "WeakAuras imported"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option1:SetText("WeakAuras")
		end,
		[7] = function()
			PluginInstallFrame.SubTitle:SetText("Capping")
			PluginInstallFrame.Desc1:SetText("Import my Capping Profile")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() NUI:SetCappingProfile()
				E:Print(L["'Capping' profile has been set."])
				PluginInstallStepComplete.message = "Capping Profile set"
				PluginInstallStepComplete:Show()
			end)
			PluginInstallFrame.Option1:SetText("Capping")
		end,
		[8] = function()
			PluginInstallFrame.SubTitle:SetText("Installation Complete")
			PluginInstallFrame.Desc1:SetText("You have completed the installation process.")
			PluginInstallFrame.Desc2:SetText("Please click the button below in order to finalize the process and automatically reload your UI.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Finished")
		end,
	},
	StepTitles = {
		[1] = "Welcome",
		[2] = "Layout",
		[E.Retail and 3] = "Mythic+ Addons",
		[E.TBC and 3] = "Classic Addons",
		[E.Classic and 3] = "Classic Addons",
		[4] = "Nameplates",
		[5] = "Details",
		[6] = "WeakAuras",
		[7] = "PvP",
		[8] = "Installation Complete",
	},
	StepTitlesColor = { 1, 1, 1 },
	StepTitlesColorSelected = { 0, 179 / 255, 1 },
	StepTitleWidth = 200,
	StepTitleButtonWidth = 180,
	StepTitleTextJustification = "RIGHT",
}
--This function holds the options table which will be inserted into the ElvUI config
local function InsertOptions()
	E.Options.args.MyPluginName = {
		order = 100,
		type = "group",
		name = format("|cff4beb2c%s|r", MyPluginName),
		args = {
			header1 = {
				order = 1,
				type = "header",
				name = MyPluginName,
			},
			description1 = {
				order = 2,
				type = "description",
				name = format("%s is a layout for ElvUI.", MyPluginName),
			},
			spacer1 = {
				order = 3,
				type = "description",
				name = "\n\n\n",
			},
			header2 = {
				order = 4,
				type = "header",
				name = "Installation",
			},
			description2 = {
				order = 5,
				type = "description",
				name = "The installation guide should pop up automatically after you have completed the ElvUI installation. If you wish to re-run the installation process for this layout then please click the button below.",
			},
			spacer2 = {
				order = 6,
				type = "description",
				name = "",
			},
			install = {
				order = 7,
				type = "execute",
				name = "Install",
				desc = "Run the installation process.",
				func = function() E:GetModule("PluginInstaller"):Queue(InstallerData); E:ToggleOptionsUI(); end,
			},
		},
	}
end

--Create a unique table for our plugin
P[MyPluginName] = {}

--This function will handle initialization of the addon
function NUI:Initialize()
	--Initiate installation process if ElvUI install is complete and our plugin install has not yet been run
	if E.private.install_complete and E.db[MyPluginName].install_version == nil then
		E:GetModule("PluginInstaller"):Queue(InstallerData)
	end

	--Insert our options table when ElvUI config is loaded
	EP:RegisterPlugin(addon, InsertOptions)
end

--Register module with callback so it gets initialized when ready
E:RegisterModule(NUI:GetName())
