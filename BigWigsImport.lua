--initialising dependencies
local E, L, V, P, G = unpack(ElvUI);
local NUI = E:GetModule("Nikipe UI");

--handling BigWigs import
function NUI:SetBigWigsProfile()
    BigWigs3DB = {
        ["namespaces"] = {
            ["BigWigs_Plugins_Victory"] = {
            },
            ["BigWigs_Plugins_Alt Power"] = {
            },
            ["BigWigs_Plugins_BossBlock"] = {
            },
            ["BigWigs_Plugins_Sounds"] = {
            },
            ["BigWigs_Plugins_AutoReply"] = {
            },
            ["BigWigs_Plugins_Countdown"] = {
            },
            ["BigWigs_Plugins_AltPower"] = {
            },
            ["BigWigs_Plugins_Colors"] = {
            },
            ["BigWigs_Plugins_Raid Icons"] = {
            },
            ["BigWigs_Plugins_InfoBox"] = {
            },
            ["BigWigs_Plugins_Bars"] = {
                ["profiles"] = {
                    ["Default"] = {
                        ["outline"] = "OUTLINE",
                        ["BigWigsAnchor_width"] = 219.9998016357422,
                        ["fontName"] = "Gotham Narrow Ultra",
                        ["BigWigsAnchor_height"] = 20.0000171661377,
                        ["spacing"] = 4,
                        ["texture"] = "Melli",
                        ["barStyle"] = "ElvUI",
                        ["BigWigsEmphasizeAnchor_width"] = 320.0000305175781,
                    },
                },
            },
            ["BigWigs_Plugins_Super Emphasize"] = {
            },
            ["BigWigs_Plugins_Wipe"] = {
            },
            ["BigWigs_Plugins_Statistics"] = {
            },
            ["BigWigs_Plugins_Messages"] = {
            },
            ["LibDualSpec-1.0"] = {
            },
            ["BigWigs_Plugins_Pull"] = {
            },
            ["BigWigs_Plugins_Proximity"] = {
            },
        },
        ["profileKeys"] = {
            ["Dettera - Anasterian"] = "Default",
        },
        ["profiles"] = {
            ["Default"] = {
                ["fakeDBMVersion"] = true,
            },
        },
    }
end
