-------------------------------------------
-- gui
-------------------------------------------
cl.ui = {}

local ui = cl.ui
local LAM = LibStub:GetLibrary("LibAddonMenu-2.0")
local LMP = LibStub:GetLibrary("LibMediaProvider-1.0")
local loc = {}
local panel = {
    type = "panel",
    name = "Clock",
    displayName = "|cFFD700Clock|r - Tamriel Standard Time",
    author = "|c5175ea@Tyx|r",
    version = cl.VERSION,
    slashCommand = "/clsettings",
    registerForRefresh = true,
    registerForDefaults = true,
    resetFunc = function() cl.st.Reset() end,
}

ui.styles = {
    "normal",
    "outline",
    "thick-outline",
    "shadow",
    "soft-shadow-thick",
    "soft-shadow-thin",
}

------------------
-- Utility
------------------
local function ReloadGUI()
    ReloadUI(mainGUI) -- should be replaced with only the Clock settings panel but don't know how
end

------------------
-- Toggle
------------------
local function AddToggle()
    local toggle = {
        type = "submenu",
        name = loc.togOpt,
        tooltip = loc.togOptTxt,
        controls = {
            [1] = {
                type = "checkbox",
                name = loc.sClock,
                getFunc = function() return cl.st.IsActive() end,
                setFunc = function(value) cl.st.SetActive(value) end,
            },
            [2] = {
                type = "checkbox",
                name = loc.sTime,
                getFunc = function() return cl.st.ShowTime() end,
                setFunc = function(value) cl.st.SetShowTime(value) end,
                disabled = function() return not cl.st.IsActive() end,
            },
            [3] = {
                type = "checkbox",
                name = loc.sMove,
                tooltip = loc.tMove,
                getFunc = function() return cl.st.IsMoveable() end,
                setFunc = function(value) cl.st.SetMoveable(value) end,
                disabled = function() return not cl.st.IsActive() end,
            },
            [4] = {
                type = "checkbox",
                name = loc.sAHide,
                tooltip = loc.tAHide,
                getFunc = function() return cl.st.AutoHide() end,
                setFunc = function(value)
                    cl.st.SetAutoHide(value)
                    ReloadGUI()
                end,
                disabled = function() return not cl.st.IsActive() end,
            },
            [5] = {
                type = "checkbox",
                name = loc.sFormat,
                getFunc = function() return cl.st.IsUSTime() end,
                setFunc = function(value) return cl.st.SetUSTime(value) end,
                disabled = function() return not cl.st.IsActive() end,
            },
            [6] = {
                type = "checkbox",
                name = loc.sAMPM,
                getFunc = function() return cl.st.ShowUS() end,
                setFunc = function(value) cl.st.SetShowUS(value) end,
                disabled = function() return not cl.st.IsUSTime() or not cl.st.IsActive() end,
            },
            [7] = {
                type = "checkbox",
                name = loc.sNum,
                tooltip = loc.tNum,
                getFunc = function() return cl.st.ShowNum() end,
                setFunc = function(value) cl.st.SetShowNum(value) end,
                disabled = function() return not cl.st.IsActive() end,
            },
            [8] = {
                type = "checkbox",
                name = loc.sSec,
                getFunc = function() return cl.st.ShowSec() end,
                setFunc = function(value) cl.st.SetShowSec(value) end,
                disabled = function() return not cl.st.IsActive() end,
            },
            [9] = {
                type = "checkbox",
                name = loc.sMoon,
                tooltip = loc.tMoon,
                getFunc = function() return cl.st.ShowMoon() end,
                setFunc = function(value) cl.st.SetShowMoon(value) end,
                disabled = function() return not cl.st.IsActive() end,
            },
            [10] = {
                type = "checkbox",
                name = loc.sLDate,
                tooltip = loc.tLDate,
                getFunc = function() return cl.st.ShowLoreDate() end,
                setFunc = function(value)
                    cl.st.SetShowLoreDate(value)
                    if value then
                        cl.st.SetShowFLDate(not value)
                    end
                end,
                disabled = function() return not cl.st.IsActive() end,
            },
            [11] = {
                type = "checkbox",
                name = loc.sFLDate,
                tooltip = loc.tFLDate,
                getFunc = function() return cl.st.ShowFLDate() end,
                setFunc = function(value)
                    cl.st.SetShowFLDate(value)
                    if value then
                        cl.st.SetShowLoreDate(not value)
                    end
                end,
                disabled = function() return not cl.st.IsActive() end,
            },
            [12] = {
                type = "checkbox",
                name = loc.sRT,
                tooltip = loc.tRT,
                getFunc = function() return cl.st.ShowRT() end,
                setFunc = function(value) cl.st.SetShowRT(value) end,
                disabled = function() return not cl.st.IsActive() end,
            },
            [13] = {
                type = "checkbox",
                name = loc.sDate,
                tooltip = loc.tDate,
                getFunc = function() return cl.st.ShowDate() end,
                setFunc = function(value) cl.st.SetShowDate(value) end,
                disabled = function() return not cl.st.IsActive() end,
            },
        }
    }
    return toggle
end

------------------
-- Style
------------------
local function AddLook()
    local look = {
        type = "submenu",
        name = loc.look,
        tooltip = loc.lookTxt,
        controls = {
            [1] = {
                type = "colorpicker",
                name = loc.nColPick,
                tooltip = loc.tColPick,
                getFunc = function() return cl.st.GetColor() end,
                setFunc = function(r, g, b, a) cl.st.SetColor(r, g, b, a) end,
            },
            [2] = {
                type = "dropdown",
                name = loc.nFont,
                tooltip = loc.tFont,
                choices = LMP:List('font'),
                getFunc = function() return cl.st.GetLook("font") end,
                setFunc = function(value) cl.st.SetLook("font", value) end
            },
            [3] = {
                type = "dropdown",
                name = loc.nStyle,
                tooltip = loc.tStyle,
                choices = ui.styles,
                getFunc = function() return cl.st.GetLook("style") end,
                setFunc = function(value) cl.st.SetLook("style", value) end
            },
            [4] = {
                type = "slider",
                name = loc.nSize,
                tooltip = loc.tSize,
                min = 10,
                max = 70,
                step = 2,
                getFunc = function() return cl.st.GetLook("size") end,
                setFunc = function(value) cl.st.SetLook("size", value) end
            },
            [5] = {
                type = "description",
                title = loc.descEditLookY,
                text = loc.descEditLookYTxt,
            },
            [6] = {
                type = "description",
                title = loc.descEditLookD,
                text = loc.descEditLookDTxt,
            },
            [7] = {
                type = "description",
                title = loc.descEditLookE,
                text = loc.descEditLookETxt,
            },
            [8] = {
                type = "editbox",
                name = loc.nELore,
                tooltip = loc.tELore,
                getFunc = function() return cl.st.GetFormat("lore") end,
                setFunc = function(value) cl.st.SetFormat("lore", value) end,
                isMultiline = true,
            },
            [9] = {
                type = "editbox",
                name = loc.nEReal,
                tooltip = loc.tEReal,
                getFunc = function() return cl.st.GetFormat("real") end,
                setFunc = function(value) cl.st.SetFormat("real", value) end,
                isMultiline = true,
            },
        }
    }
    return look
end

------------------
-- Database
------------------
local function AddDay()
    local day = cl.tm.ChangeSToHMS(cl.st.GetTime("daytime"))
    local data = {
        type = "submenu",
        name = loc.day,
        tooltip = loc.dayTxt,
        controls = {
            [1] = {
                type = "texture",
				image = [[Clock\img\sync.dds]],
				imageWidth = 510,
				imageHeight = 100,
            },
            [2] = {
                type = "description",
                title = loc.descDB,
                text = loc.descDBTxt,
            },
            [3] = {
                type = "button",
                name = loc.nMid,
                tooltip = loc.tMid,
                func = function() cl.tm.CreateNewStart("midnight", GetTimeStamp()) end,
            },
            [4] = {
                type = "button",
                name = loc.nRise,
                tooltip = loc.tRise,
                func = function() cl.tm.CreateNewStart("sunrise", GetTimeStamp()) end,
            },
            [5] = {
                type = "button",
                name = loc.nNoon,
                tooltip = loc.tNoon,
                func = function() cl.tm.CreateNewStart("noon", GetTimeStamp()) end,
            },
            [6] = {
                type = "button",
                name = loc.nSet,
                tooltip = loc.tSet,
                func = function() cl.tm.CreateNewStart("sunset", GetTimeStamp()) end,
            },
            [7] = {
                type = "description",
                title = loc.descDS,
                text = loc.descDSTxt,
            },
            [8] = {
                type = "slider",
                name = loc.nDayH,
                tooltip = loc.tDayH,
                min = 4,
                max = 6,
                step = 1,
                getFunc = function() return day[1] end,
                setFunc = function(value) day[1] = value end
            },
            [9] = {
                type = "slider",
                name = loc.nDayM,
                tooltip = loc.tDayM,
                min = 0,
                max = 59,
                step = 1,
                getFunc = function() return day[2] end,
                setFunc = function(value) day[2] = value end
            },
            [10] = {
                type = "slider",
                name = loc.nDayS,
                tooltip = loc.tDayS,
                min = 0,
                max = 59,
                step = 1,
                getFunc = function() return day[3] end,
                setFunc = function(value) day[3] = value end
            },
            [11] = {
                type = "button",
                name = loc.nAplyData,
                tooltip = loc.tAplyData,
                func = function()
                    local s = cl.tm.ChangeHMSToS(day[1], day[2], day[3])
                    cl.st.SetTime("daytime", s)
                end,
            },
        }
    }
    return data
end

------------------
-- Moon
------------------
local function AddMoon()
    local night = {
        cl.st.GetMoon("full"),
        cl.st.GetMoon("way"),
        cl.st.GetMoon("new"),
    }

    local moon = {
        type = "submenu",
        name = loc.moon,
        tooltip = loc.moonTxt,
        controls = {
            [1] = {
                type = "description",
                title = loc.descMS,
                text = loc.descMSTxt,
            },
            [2] = {
                type = "texture",
                image = cl.vi.moons.full,
                imageWidth = 32,
                imageHeight = 32,
            },
            [3] = {
                type = "button",
                name = loc.nFull,
                tooltip = loc.tFull,
                func = function()
                    cl.st.SetMoon("start", GetTimeStamp())
                    cl.st.SetMoon("name", "full")
                end,
                warning = loc.wFull,
            },
            [4] = {
                type = "texture",
                image = cl.vi.moons.new,
                imageWidth = 32,
                imageHeight = 32,
            },
            [5] = {
                type = "button",
                name = loc.nNew,
                tooltip = loc.tNew,
                func = function()
                    cl.st.SetMoon("start", GetTimeStamp())
                    cl.st.SetMoon("name", "new")
                end,
                warning = loc.wNew,
            },
            [6] = {
                type = "description",
                title = loc.descMoon,
                text = loc.descMoonTxt,
            },
            [7] = {
                type = "slider",
                name = loc.nNightF,
                tooltip = loc.tNightF,
                min = 1,
                max = 25,
                step = 1,
                getFunc = function() return night[1] end,
                setFunc = function(value) night[1] = value end
            },
            [8] = {
                type = "slider",
                name = loc.nNightW,
                tooltip = loc.tNightW,
                min = 1,
                max = 25,
                step = 1,
                getFunc = function() return night[2] end,
                setFunc = function(value) night[2] = value end
            },
            [9] = {
                type = "slider",
                name = loc.nNightN,
                tooltip = loc.tNightN,
                min = 1,
                max = 25,
                step = 1,
                getFunc = function() return night[3] end,
                setFunc = function(value) night[3] = value end
            },
            [10] = {
                type = "button",
                name = loc.nAplyMoon,
                tooltip = loc.tAplyMoon,
                func = function()
                    cl.st.SetMoon("full", night[1])
                    cl.st.SetMoon("way", night[2])
                    cl.st.SetMoon("new", night[3])
                end,
            },
        }
    }
    return moon
end

------------------
-- Reset
------------------
local function AddReset()
    local reset = {
        type = "submenu",
        name = loc.reset,
        tooltip = loc.resetTxt,
        controls = {
            [1] = {
                type = "button",
                name = loc.nResFull,
                tooltip = loc.tResFull,
                func = function()
                    cl.st.Reset()
                    ReloadGUI()
                end,
                warning = loc.wResFull,
            },
            [2] = {
                type = "button",
                name = loc.nResUI,
                tooltip = loc.tResUI,
                func = function()
                    cl.st.ResetUI()
                end,
                warning = loc.wResUI,
            },
            [3] = {
                type = "button",
                name = loc.nResTime,
                tooltip = loc.tResTime,
                func = function()
                    cl.st.ResetTime()
                    ReloadGUI()
                end,
                warning = loc.wResTime,
            },
        }
    }
    return reset
end

------------------
-- Init
------------------
function ui.InitSettings()
    LAM:RegisterAddonPanel("ClockSettings", panel)

    loc = cl.ln.gui -- Localization table with the current selected language

    local data = {
        [1] = AddToggle(),
        [2] = AddLook(),
        [3] = AddDay(),
        [4] = AddMoon(),
        [5] = AddReset(),
    }
    LAM:RegisterOptionControls("ClockSettings", data)
end
