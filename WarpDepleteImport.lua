--initialising dependencies
local E, L, V, P, G = unpack(ElvUI);
local NUI = E:GetModule("Nikipe UI");

--handling WarpDeplete Profile Import
--handling class colors
local classcolor = E:ClassColor(E.myclass, true)

-- WarpDeplete profile setup
function NUI:SetWarpDepleteProfile()
	WarpDepleteDB["profileKeys"][E.mynameRealm] = E.mynameRealm
	WarpDepleteDB["global"]["mdtAlertShown"] = true
	WarpDepleteDB["profiles"][E.mynameRealm] = {
		["timerSuccessColor"] = "ff05a1ee",
        ["deathsColor"] = "ffffffff",
        ["forcesFont"] = "Gotham Narrow Ultra",
        ["completedObjectivesColor"] = tostring(E:RGBToHex(classcolor.r, classcolor.g, classcolor.b, "ff", "")),
        ["timerFont"] = "Gotham Narrow Ultra",
        ["bar3Font"] = "Gotham Narrow Ultra",
		["bar3Texture"] = "Melli",
        ["showPrideGlow"] = false,
        ["bar3TextureColor"] = tostring(E:RGBToHex(classcolor.r, classcolor.g, classcolor.b, "ff", "")),
        ["objectivesFont"] = "Gotham Narrow Ultra",
        ["keyDetailsFont"] = "Gotham Narrow Ultra",
        ["timerExpiredColor"] = "ffff0000",
        ["bar2TextureColor"] = tostring(E:RGBToHex(classcolor.r, classcolor.g, classcolor.b, "ff", "")),
        ["completedForcesColor"] = "ffffffff",
        ["bar1Font"] = "Gotham Narrow Ultra",
        ["forcesOverlayTextureColor"] = "ff00a3ff",
        ["bar2Font"] = "Gotham Narrow Ultra",
		["bar2Texture"] = "Melli",
        ["bar1TextureColor"] = tostring(E:RGBToHex(classcolor.r, classcolor.g, classcolor.b, "ff", "")),
		["bar1Texture"] = "Melli",
        ["forcesTextureColor"] = "ff00a3ff",
        ["timerRunningColor"] = "ffffffff",
        ["deathsFont"] = "Gotham Narrow Ultra",
        ["keyFont"] = "Gotham Narrow Ultra",
		["keyDetailsColor"] = "ff00a3ff",
		["keyColor"] = "ff00a3ff",
	}
end