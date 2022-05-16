--initialising dependencies
local E, L, V, P, G = unpack(ElvUI);
local NUI = E:GetModule("Nikipe UI");

--handling OmniCD import
function NUI:SetOmniCDProfile()
    OmniCDDB = {
        ["profileKeys"] = {
        },
        ["namespaces"] = {
            ["LibDualSpec-1.0"] = {
            },
        },
        ["cooldowns"] = {
        },
        ["version"] = 2.51,
        ["profiles"] = {
            ["Default"] = {
                ["Party"] = {
                    ["party"] = {
                        ["extraBars"] = {
                            ["interruptBar"] = {
                                ["statusBarWidth"] = 300,
                                ["locked"] = true,
                            },
                        },
                        ["general"] = {
                            ["showAnchor"] = true,
                        },
                        ["manualPos"] = {
                            ["interruptBar"] = {
                                ["y"] = 204.6214824633753,
                                ["x"] = 388.445131082648,
                            },
                        },
                    },
                    ["visibility"] = {
                        ["finder"] = true,
                    },
                },
                ["General"] = {
                    ["fonts"] = {
                        ["statusBar"] = {
                            ["font"] = "Gotham Narrow Ultra",
                        },
                        ["optionSmall"] = {
                            ["font"] = "Gotham Narrow Ultra",
                        },
                        ["anchor"] = {
                            ["font"] = "Gotham Narrow Ultra",
                        },
                        ["icon"] = {
                            ["font"] = "Gotham Narrow Ultra",
                        },
                        ["option"] = {
                            ["font"] = "Gotham Narrow Ultra",
                        },
                    },
                    ["textures"] = {
                        ["statusBar"] = {
                            ["BG"] = "Melli",
                            ["bar"] = "Melli",
                        },
                    },
                },
            },
        },
    }
end
