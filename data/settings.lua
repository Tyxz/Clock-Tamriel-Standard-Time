-------------------------------------------
-- settings
-------------------------------------------
cl.st = {}

local st = cl.st

------------------
-- defaults
------------------
local defaults = {
    active = true,
    show_time = true,
    moveable = true,
    auto_hide = true,
    us_time = false,
    show_us = false,
    show_num = true,
    show_sec = true,
    show_moon = true,
    show_ldate = true,
    show_fldate = false,
    show_date = false,
    show_rt = false,
    time = {
        start = 1398044126, -- exact unix time at the calculated game time start in s
        daytime = 20955, -- length of one day in s (default 5.75h right now)
        night = 7200, -- time of only the night ins (2h)
        name = "noon",
    },
    moon = {
        start = 1400340861, -- Unix time of the start of the full moon phase in s
        full = 6, -- length of a full moon phase in real time in s -> TRY IN NIGHTS FOR DAYLENGTH OFFSET
        new = 6, -- length of a new moon phase in real time in s
        way = 10, -- length of the way between full moon and new moon in s
        name = "full",
    },
    offset = {
        x = 260,
        y = 70,
    },
    look = {
        color = {
            r = 1,
            g = 1,
            b = 1,
            a = 0.5,
        },
        font = "ESO Cartographer",
        style = "thin_shadow",
        size = 24,
        format = {
            lore = "_DDD, _D. _MMM _YY _hh:_mm:_ss",
            real = "_DDD, _D. _MMM _YY _hh:_mm:_ss",
        },
    }
}

------------------
-- Set
------------------
function st.SetTime(name, value)
    cl.settings.time[name] = value
end

-----------
-- toggle
-----------
function st.SetActive(active)
    cl.settings.active = active
end

function st.SetShowTime(active)
    cl.settings.show_time = active
end

function st.SetMoveable(move)
    cl.settings.moveable = move
end

function st.SetAutoHide(hide)
    cl.settings.auto_hide = hide
end

function st.SetUSTime(us)
    cl.settings.us_time = us
end

function st.SetShowUS(us)
    cl.settings.show_us = us
end

function st.SetShowNum(num)
    cl.settings.show_num = num
end

function st.SetShowSec(sec)
    cl.settings.show_sec = sec
end

function st.SetShowMoon(moon)
    cl.settings.show_moon = moon
end

-- Date and RT will move the clock
function st.SetShowLoreDate(gd)
    cl.settings.show_ldate = gd
    cl.vi.UpdateClock()
end

function st.SetShowFLDate(gd)
    cl.settings.show_fldate = gd
    cl.vi.UpdateClock()
end

function st.SetShowDate(d)
    cl.settings.show_date = d
    cl.vi.UpdateClock()
end

function st.SetShowRT(rt)
    cl.settings.show_rt = rt
    cl.vi.UpdateClock()
end

----------------------------------

-----------
-- moon
-----------
function st.SetMoon(name, value)
    cl.settings.moon[name] = value
end

-----------
-- offset
-----------
function st.SetPosition(x, y)
    cl.settings.offset.x = x
    cl.settings.offset.y = y
end

-----------
-- view
-----------
function st.SetColor(r, g, b, a)
    local c = cl.settings.look.color
    c.r = r
    c.g = g
    c.b = b
    c.a = a
    cl.vi.UpdateClock()
end

function st.SetLook(name, value)
    cl.settings.look[name] = value
    cl.vi.UpdateClock()
end

function st.SetFormat(name, value)
    cl.settings.look.format[name] = value
    cl.vi.UpdateClock()
end

------------------
-- GET
------------------
-----------
-- time
-----------
function st.GetTime(name)
    return cl.settings.time[name]
end

-----------
-- toggle
-----------
function st.IsActive()
    return cl.settings.active
end

function st.ShowTime()
    return cl.settings.show_time
end

function st.IsMoveable()
    return cl.settings.moveable
end

function st.AutoHide()
    return cl.settings.auto_hide
end

function st.IsUSTime()
    return cl.settings.us_time
end

function st.ShowUS()
    return cl.settings.show_us
end

function st.ShowNum()
    return cl.settings.show_num
end

function st.ShowSec()
    return cl.settings.show_sec
end

function st.ShowMoon()
    return cl.settings.show_moon
end

function st.ShowLoreDate()
    return cl.settings.show_ldate
end

function st.ShowFLDate()
    return cl.settings.show_fldate
end

function st.ShowDate()
    return cl.settings.show_date
end

function st.ShowRT()
    return cl.settings.show_rt
end

-----------
-- moon
-----------
function st.GetMoon(name)
    return cl.settings.moon[name]
end

---
-----------
-- offset
-----------
function st.GetPosition()
    return cl.settings.offset.x, cl.settings.offset.y
end

-----------
-- view
-----------
local function RGBToHex(r, g, b, _)
    r = r * 255
    g = g * 255
    b = b * 255
    return string.format("%X%X%X", r, g, b)
end

function st.GetColorHex()
    return RGBToHex(st.GetColor())
end

function st.GetColor()
    local c = cl.settings.look.color
    return c.r, c.g, c.b, c.a
end

function st.GetLook(name)
    return cl.settings.look[name]
end

function st.GetFormat(name)
    return cl.settings.look.format[name]
end

------------------
-- language
------------------
function st.GetLanguage()
    return cl.settings.language
end

------------------
-- utilities
------------------
local function copy(t, d)
    for k, v in pairs(d) do
        if type(t[k]) == "table" then
            copy(t[k], v)
        else
            t[k] = v
        end
    end
end

local function copyTable(t)
    local t2 = {}
    for k, v in pairs(t) do
        t2[k] = v
    end
    return t2
end

------------------
-- Reset
------------------
function st.Reset()
    copy(cl.settings, defaults)
    cl.vi.InitClock()
end

function st.ResetUI()
    local times = copyTable(cl.settings.time)
    local moon = copyTable(cl.settings.moon)
    copy(cl.settings, defaults)
    cl.settings.time = copyTable(times)
    cl.settings.moon = copyTable(moon)
    cl.vi.InitClock()
end

function st.ResetTime()
    local loc = cl.settings.language
    local offset = copyTable(cl.settings.offset)
    local look = copyTable(cl.settings.look)
    copy(cl.settings, defaults)
    cl.settings.loc = loc
    cl.settings.offset = copyTable(offset)
    cl.settings.look = copyTable(look)
    cl.vi.InitClock()
end

------------------
-- Init
------------------
function st.Init()
    cl.settings = ZO_SavedVars:NewAccountWide("Clock_Settings", cl.SAV_VERSION, "settings", defaults)
end

------------------
-- Commands
------------------
SLASH_COMMANDS["/cl"] = function(com)
    com = com:lower()
    local lang = st.GetLanguage()
    local loc = cl.ln.com
    if com == "show" then
        d(cl.vi.DBToString())
    elseif com == loc.midnight or com == loc.sunrise or com == loc.noon or com == loc.sunset then
        cl.tm.CreateNewStart(com, GetTimeStamp())
    elseif com == "reset" then
        cl.st.Reset()
        d(loc.resetTxt)
    elseif com == "resetui" then
        cl.st.ResetUI()
        d(loc.resetUITxt)
    elseif com == "resettime" then
        cl.st.ResetTime()
        d(loc.resetTimeTxt)
    elseif com == "us" then
        cl.st.SetUSTime(not cl.st.IsUSTime())
        if cl.st.IsUSTime() then
            d(loc.usOn)
        else
            d(loc.usOff)
        end
    elseif com == "num" then
        cl.st.SetShowNum(not cl.st.ShowNum())
        if cl.st.ShowNum() then
            d(loc.numOn)
        else
            d(loc.numOff)
        end
    elseif com == "sec" then
        cl.st.SetShowSec(not cl.st.ShowSec())
        if cl.st.ShowSec() then
            d(loc.secOn)
        else
            d(loc.secOff)
        end
    elseif com == "active" then
        cl.st.SetActive(not cl.st.IsActive())
        if cl.st.IsActive() then
            d(loc.activeOn)
        else
            d(loc.activeOff)
        end
    elseif com == "move" then
        cl.st.SetMoveable()(not cl.st.IsMoveable())
        if cl.st.IsMoveable() then
            d(loc.moveOn)
        else
            d(loc.moveOff)
        end
    elseif com == "moon" then
        cl.st.SetShowMoon(not cl.st.ShowMoon())
        if cl.st.ShowMoon() then
            d(loc.moonOn)
        else
            d(loc.moonOff)
        end
    elseif com == "ldate" then
        cl.st.SetShowLoreDate(not cl.st.ShowLoreDate())
        if cl.st.ShowLoreDate() then
            d(loc.ldateOn)
        else
            d(loc.ldateOff)
        end
    elseif com == "fldate" then
        cl.st.SetShowFLDate(not cl.st.ShowFLDate())
        if cl.st.ShowFLDate() then
            d(loc.fldateOn)
        else
            d(loc.fldateOff)
        end
    elseif com == "rt" then
        cl.st.SetShowRT(not cl.st.ShowRT())
        if cl.st.ShowRT() then
            d(loc.rtOn)
        else
            d(loc.rtOff)
        end
    elseif com == "date" then
        cl.st.SetShowDate(not cl.st.ShowDate())
        if cl.st.ShowDate() then
            d(loc.dateOn)
        else
            d(loc.dateOff)
        end
    elseif com == "debug" then
        d("Lore")
        d(cl.tm.GetLoreDate())
        d("Fake")
        d(cl.tm.GetFakeLoreDate())
    else
        d(loc.text)
    end
end