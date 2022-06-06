--initialising dependencies
local E, L, V, P, G = unpack(ElvUI);
local NUI = E:GetModule("Nikipe UI");

--handling OmniCD import
function NUI:SetOmniCDProfile()

    local Tank = "Nikipe UI Tank"

    OmniCDDB["global"]["disableElvMsg"] = true

    OmniCDDB["profiles"][Tank] = OmniCDDB["profiles"][Tank] or {}

    OmniCDDB["profiles"][Tank]["General"] = {
        ["fonts"] = {
            ["statusBar"] = {
                ["font"] = "Gotham Narrow Ultra",
                ["flag"] = "OUTLINE",
            },
            ["optionSmall"] = {
                ["font"] = "Gotham Narrow Ultra",
                ["flag"] = "OUTLINE",
            },
            ["anchor"] = {
                ["font"] = "Gotham Narrow Ultra",
                ["flag"] = "OUTLINE",
            },
            ["icon"] = {
                ["font"] = "Gotham Narrow Ultra",
            },
            ["option"] = {
                ["font"] = "Gotham Narrow Ultra",
                ["flag"] = "OUTLINE",
            },
        },
        ["textures"] = {
            ["statusBar"] = {
                ["BG"] = "mMediaTag O1",
                ["bar"] = "mMediaTag O1",
            },
        },

    }
    OmniCDDB["profiles"][Tank]["Party"] = {
        ["visibility"] = {
            ["none"] = true,
            ["scenario"] = true,
            ["finder"] = true,
        },
        ["party"] = {
            ["extraBars"] = {
                ["interruptBar"] = {
                    ["statusBarWidth"] = 200,
                    ["locked"] = true,
                },
            },
            ["manualPos"] = {
                ["interruptBar"] = {
                    ["x"] = 440.0719823511245,
                    ["y"] = 189.0480426494469,
                },
            },
        },
    }
    OmniCDDB["profileKeys"][E.mynameRealm] = Tank


end
