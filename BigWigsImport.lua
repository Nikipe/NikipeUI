--initialising dependencies
local E, L, V, P, G = unpack(ElvUI);
local NUI = E:GetModule("Nikipe UI");

--handling BigWigs import
function NUI:SetBigWigsProfile()
    local Tank = "Nikipe UI"
    BigWigs3DB["profiles"][Tank] = BigWigs3DB["profiles"][Tank] or {}
    BigWigs3DB["profiles"][Tank]["showZoneMessages"] = false
    BigWigs3DB["profiles"][Tank]["fakeDBMVersion"] = true
    BigWigs3DB["profiles"][Tank]["flash"] = false
    BigWigsIconDB["hide"] = true

    BigWigs3DB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"] or {}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"]["Tank"] = {
        ["soundName"] = "d_gun1",
    }
    BigWigs3DB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"] or {}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"]["Eltreum"] = {
        ["disabled"] = false,
        ["mode"] = 4,
    }
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Sounds"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Sounds"]["profiles"] or {}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Sounds"]["profiles"]["Tank"] = {
        ["media"] = {
            ["Info"] = "Sonar",
        },
    }
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Countdown"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Countdown"]["profiles"] or {}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Countdown"]["profiles"]["Tank"] = {
        ["fontName"] = "Gotham Narrow Ultra",
        ["countdownTime"] = 10,
    }
    BigWigs3DB["namespaces"]["BigWigs_Plugins_AltPower"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_AltPower"]["profiles"] or {}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_AltPower"]["profiles"]["Tank"] = {
        ["fontName"] = "Gotham Narrow Ultra",
    }
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"] or {}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["Tank"] = {
        ["BigWigsAnchor_width"] = 219.9995880126953,
        ["BigWigsEmphasizeAnchor_height"] = 22.99999618530273,
        ["growup"] = true,
        ["fontName"] = "Gotham Narrow Ultra",
        ["BigWigsAnchor_height"] = 22.99999618530273,
        ["BigWigsAnchor_y"] = 141.4403581666866,
        ["emphasizeGrowup"] = true,
        ["spacing"] = 4,
        ["BigWigsEmphasizeAnchor_y"] = 276.9066539669038,
        ["texture"] = "mMediaTag O1",
        ["barStyle"] = "ElvUI",
        ["BigWigsAnchor_x"] = 1091.838334970511,
        ["BigWigsEmphasizeAnchor_width"] = 220.0000152587891,
        ["BigWigsEmphasizeAnchor_x"] = 809.3869350337918,
    }
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"] or {}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"]["Tank"] = {
        ["emphFontName"] = "Gotham Narrow Ultra",
        ["fontName"] = "Gotham Narrow Ultra",
    }
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"] or {}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"]["Tank"] = {
        ["width"] = 140.0001678466797,
        ["height"] = 119.9999771118164,
    }
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"] or {}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"]["Tank"] = {
        ["startPullSound"] = "Heartbeat",
        ["voice"] = "koKR: Default (Female)",
        ["endPullSound"] = "Sonar",
    }
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Wipe"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Wipe"]["profiles"] or {}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Wipe"]["profiles"]["Tank"] = {
        ["wipeSound"] = "Wicked Female Laugh",
    }
    BigWigs3DB["profileKeys"] = { [E.mynameRealm] = "Tank",
    }
end
