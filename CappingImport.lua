--initialising dependencies
local E, L, V, P, G = unpack(ElvUI);
local NUI = E:GetModule("Nikipe UI");

--handling Capping profile import
function NUI.SetCappingProfile()
    CappingSettings = {
        ["profileKeys"] = {
            [E.mynameRealm] = "Nikipe UI"
        },
        ["profiles"] = {
            ["Nikipe UI"] = {
                ["barOnControl"] = "SAY",
                ["lock"] = true,
                ["barOnShift"] = "INSTANCE_CHAT",
                ["barTexture"] = "mMediaTag O1",
                ["width"] = 203,
                ["font"] = "Gotham Narrow Ultra",
                ["position"] = {
                    "BOTTOMRIGHT", -- [1]
                    "BOTTOMRIGHT", -- [2]
                    -13.33474540710449, -- [3]
                    208.1657257080078, -- [4]
                },
                ["growUp"] = true,
            },
        },
    }
    CappingSettings["profileKeys"][E.mynameRealm] = "Nikipe UI"
end
