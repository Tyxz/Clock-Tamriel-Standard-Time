-------------------------------------------
-- view
-------------------------------------------
cl.vi = {}

local vi = cl.vi
local LMP = cl.LMP
local loc
local CLOCKUI_SCENE_FRAGMENT

vi.format = {
    int = TIME_FORMAT_PRECISION_TWENTY_FOUR_HOUR,
    us = TIME_FORMAT_PRECISION_TWELVE_HOUR,
}

vi.styles = {
    normal = "FONT_STYLE_NORMAL",
    outline = "FONT_STYLE_OUTLINE",
    thick_outtline = "FONT_STYLE_OUTLINE_THICK",
    shadow = "FONT_STYLE_SHADOW",
    thick_shadow = "FONT_STYLE_SOFT_SHADOW_THICK",
    thin_shadow = "FONT_STYLE_SOFT_SHADOW_THIN",
}

vi.moons = {
    full = [[Clock\img\fullmoon.dds]],
    new = [[Clock\img\newmoon.dds]],
    waning = [[Clock\img\waningmoon.dds]],
    waxing = [[Clock\img\waxingmoon.dds]],
}

------------------
-- simple
------------------
local function ChangeTime(t, i)
    local ost = GetTimeStamp()
    local daytime = cl.st.GetTime("daytime")

    while t < ost do
        t = t + daytime -- next time after current time
    end

    t = t + daytime * i
    t = t + GetSecondsSinceMidnight() - ost
    local out = cl.tm.ChangeSToHMS(t)


    while out[1] > 23 do
        out[1] = out[1] - 24
    end

    local s_out = out[1] .. ":" .. out[2] .. " "

    return s_out
end

function vi.DBToString()

    local day = 86400 -- 24h in s

    local daytime = cl.st.GetTime("daytime")
    local midnight = cl.tm.CreateMidnight()
    local night = cl.st.GetTime("night") / 2
    local dTime = daytime / 2

    local out = {}

    for i = 0, math.floor(day / daytime) do

        local mid = ChangeTime(midnight, i)
        local sur = ChangeTime(midnight + night, i)
        local noo = ChangeTime(midnight + night + dTime / 2, i)
        local sus = ChangeTime(midnight + night + dTime, i)

        out[1] = loc.dbTS[1] .. mid
        out[2] = loc.dbTS[2] .. sur
        out[3] = loc.dbTS[3] .. noo
        out[4] = loc.dbTS[4] .. sus
    end

    local t = cl.tm.ChangeSToHMS(daytime)

    local text = loc.dbTS[5] .. t[1] .. "h " .. t[2] .. "m " .. t[3] .. "s " .. loc.dbTS[6]
    text = text .. out[1] .. "\n" .. out[2] .. "\n" .. out[3] .. "\n" .. out[4]

    return text
end

function vi.ParseFormat(year, month, day, hour, minute, second, isLore)
    local format

    local locL = loc.date.lore
    local locR = loc.date.real

    local yearShort = year
    local monthZero
    local monthName = ""
    local dayName = ""
    local dayZero
    local hZero
    local mZero
    local sZero
    local am
    local sec

    if isLore then
        format = cl.st.GetFormat("lore")
        if cl.st.ShowLoreDate() or cl.st.ShowFLDate() then
            year = locL.year .. year
            monthName = locL.months[month]
            dayName = locL.week[(day % 7) + 1]
        end
    else
        if not cl.st.ShowDate() and not cl.st.ShowRT() then
            return ""
        end
        format = cl.st.GetFormat("real")
        if cl.st.ShowDate() then
            yearShort = year - 2000
            monthName = locR.months[month]
            dayName = locR.week[cl.tm.GetRealWeekDay(day, month, yearShort)]
        end
    end

    -- year
    if year ~= 0 then
        format = string.gsub(format, "_YY", year)
        format = string.gsub(format, "_Y", yearShort)
    else
        format = string.gsub(format, "[;:., //\]*_YY", "")
        format = string.gsub(format, "[;:., //\]*_Y", "")
    end

    -- month
    if month < 10 and month > 0 then
        monthZero = "0" .. month
    else
        monthZero = month
    end

    if month ~= 0 then
        format = string.gsub(format, "_MMM", monthName)
        format = string.gsub(format, "_MM", monthZero)
        format = string.gsub(format, "_M", month)
    else
        format = string.gsub(format, "[;:., //\]*_MMM", "")
        format = string.gsub(format, "[;:., //\]*_MM", "")
        format = string.gsub(format, "[;:., //\]*_M", "")
    end

    -- day
    if GetCVar("Language.2") == "en" and day ~= 0 then
        if day == 1 then
            day = day .. loc.date.first
        elseif day == 2 then
            day = day .. loc.date.second
        elseif day == 3 then
            day = day .. loc.date.third
        else
            day = day .. loc.date.allNum
        end

        if day:len() < 4 and day:len() > 0 then
            dayZero = "0" .. day
        else
            dayZero = day
        end
    else
        if day < 10 and day > 0 then
            dayZero = "0" .. day
        else
            dayZero = day
        end
    end

    if day ~= 0 then
        format = string.gsub(format, "_DDD", dayName)
        format = string.gsub(format, "_DD", dayZero)
        format = string.gsub(format, "_D", day)
    else
        format = string.gsub(format, "[;:., //\]*_DDD", "")
        format = string.gsub(format, "[;:., //\]*_DD", "")
        format = string.gsub(format, "[;:., //\]*_D", "")
    end

    -- hour
    -- {0,11} am : {12,11} pm
    -- {12,1,...,11} am : {12,1,...,11} pm
    if cl.st.IsUSTime() then
        if hour > 12 then
            hour = hour - 12
            am = false
        elseif hour == 12 then
            am = false
        elseif hour == 0 then
            hour = 12
            am = true
        else
            am = true
        end
    end

    if hour < 10 and cl.st.ShowNum() then
        hZero = "0" .. hour
    else
        hZero = hour
    end

    if (not isLore and not cl.st.ShowRT())
            or (isLore and not cl.st.ShowTime()) then
        format = string.gsub(format, "[;:., //\]*_hh", "")
        format = string.gsub(format, "[;:., //\]*_h", "")
    else
        format = string.gsub(format, "_hh", hZero)
        format = string.gsub(format, "_h", hour)
    end

    -- second
    if second < 10 then
        sZero = "0" .. second
    else
        sZero = second
    end

    if (format:find("_s") or format:find("_ss"))
            and cl.st.ShowSec()
            and (isLore and cl.st.ShowTime() or not isLore and cl.st.ShowRT()) then

        if cl.st.ShowUS() then
            if am then
                second = second .. " am"
                sZero = sZero .. " am"
            else
                second = second .. " pm"
                sZero = sZero .. " pm"
            end
        end

        format = string.gsub(format, "_ss", sZero)
        format = string.gsub(format, "_s", second)
        sec = true
    else
        format = string.gsub(format, "[;:., //\]*_ss", "")
        format = string.gsub(format, "[:;., //\]_s", "")
        sec = false
    end

    -- minute
    if minute < 10 then
        mZero = "0" .. minute
    else
        mZero = minute
    end

    if cl.st.ShowUS() and not sec then
        if am then
            minute = minute .. " am"
            mZero = mZero .. " am"
        else
            minute = minute .. " pm"
            mZero = mZero .. " pm"
        end
    end

    if (not isLore and not cl.st.ShowRT())
            or (isLore and not cl.st.ShowTime()) then
        format = string.gsub(format, "[;:., //\]*_mm", "")
        format = string.gsub(format, "[;:., //\]*_m", "")
    else
        format = string.gsub(format, "_mm", mZero)
        format = string.gsub(format, "_m", minute)
    end


    return format
end

--------------------
-- Print Moon
--------------------
function vi.UpdateMoon()
    vi.moontexture:ClearAnchors()
    vi.moonlabel:ClearAnchors()

    local osT = GetTimeStamp()
    local moon, t = cl.mn.GetMoonPhase(osT)

    local hms = cl.tm.ChangeSToHMS(t)

    local size = cl.st.GetLook("size")

    vi.moontexture:SetDimensions(size, size)
    vi.moontexture:SetAnchor(CENTER, ClockUITime, TOPLEFT, -2 / 3 * size, 1 / 3 * size)

    vi.moontexture:SetTexture(vi.moons[moon])

    local font = LMP:Fetch('font', cl.st.GetLook("font"))
    local style = cl.st.GetLook("style")
    local size = cl.st.GetLook("size")
    local look = string.format("%s|%u|%s", font, 1 / 2 * size, style)

    vi.moonlabel:SetFont(look)
    vi.moonlabel:SetDimensions(size, size)
    vi.moonlabel:SetAnchor(CENTER, ClockUITime, TOPLEFT, -1 / 2 * size, 1 / 2 * size)

    if hms[1] > 0 then
        vi.moonlabel:SetText(hms[1] .. "h")
    elseif hms[2] > 0 then
        vi.moonlabel:SetText(hms[2] .. "m")
    else
        vi.moonlabel:SetText(hms[3] .. "s")
    end

    vi.moonlabel:SetColor(cl.st.GetColor())
end

--------------------
-- Print Clock
--------------------
local function IsMenuHidden()
    -- Menu
    -- local isProgressHidden = ZO_PlayerProgressBar:IsHidden() nice solution but conflicts with other mods
    local isWorldMapHidden = ZO_WorldMap:IsHidden()
    local isPlayerInventoryHidden = ZO_PlayerInventory:IsHidden()
    local isCraftingHidden = ZO_CraftingResultsTopLevel:IsHidden()
    local isInteractWindowHidden = ZO_InteractWindow:IsHidden()
    local isGameMenuHidden = ZO_GameMenu:IsHidden()
    local isGameMenuIGHidden = ZO_GameMenu_InGame:IsHidden()

    return isWorldMapHidden and isPlayerInventoryHidden
            and isCraftingHidden and isInteractWindowHidden
end

function vi.UpdateClock()
    vi.UpdateBackground()

    ClockUITime:SetColor(cl.st.GetColor())

    local font = LMP:Fetch('font', cl.st.GetLook("font"))
    local style = cl.st.GetLook("style")
    local size = cl.st.GetLook("size")
    local look = string.format("%s|%u|%s", font, size, style)

    ClockUITime:SetFont(look)

    ClockUI:SetResizeToFitDescendents(true)

    ClockUI:SetMovable(cl.st.IsMoveable())
    ClockUI:SetMouseEnabled(cl.st.IsMoveable())
end

function vi.UpdateBackground()
    --local bg = LMP:Fetch('background', cl.st.GetBg())
    local size = cl.st.GetLook("size")

    local x = ClockUITime:GetDimensions() * 2
    local y = size * 8
    local pos_y = -size/2

    if cl.st.ShowRT() or cl.st.ShowDate() then -- real
        if cl.st.ShowMoon() or cl.st.ShowTime() or cl.st.ShowFLDate() or cl.st.ShowLoreDate() then -- lore + real
            if not cl.st.ShowHz() then
                y = y*2
                pos_y = 0
            end
        else
            pos_y = size/2
        end
    end
    if cl.st.ShowHz() then
        pos_y = 0
    end

    vi.background:ClearAnchors()
    vi.background:SetAnchor(CENTER, ClockUITime, CENTER, 0, pos_y)
    vi.background:SetDimensions(x, y)
    vi.background:SetTexture("EsoUI/Art/Performance/StatusMeterMunge.dds")


end

function vi.PrintClock()

    local osT = GetTimeStamp()
    local tst = cl.tm.GetTST(osT)
    local lore, real
    local year, month, day = 0, 0, 0
    local hour, minute, second

    vi.UpdateMoon()

    if cl.st.ShowLoreDate() then
        year, month, day = cl.tm.GetLoreDate()
    elseif cl.st.ShowFLDate() then
        year, month, day = cl.tm.GetFakeLoreDate()
    end

    hour, minute, second = tst[1], tst[2], tst[3]
    lore = vi.ParseFormat(year, month, day, hour, minute, second, true)

    local rt = cl.tm.ChangeSToHMS(GetSecondsSinceMidnight())
    hour, minute, second = rt[1], rt[2], rt[3]

    if cl.st.ShowDate() then
        local dat = GetDate()
        year, month, day = string.sub(dat, 1, 4), string.sub(dat, 5, 6), string.sub(dat, 7, 8)
    else
        year, month, day = 0, 0, 0
    end

    year = tonumber(year)
    month = tonumber(month)
    day = tonumber(day)

    real = vi.ParseFormat(year, month, day, hour, minute, second, false)

    if cl.st.ShowHz() then
        ClockUITime:SetText(lore .. "\t" .. real)
    else
        ClockUITime:SetText(lore .. "\n" .. real)
    end

    vi.UpdateClock()

    if cl.st.AutoHide() then
        HUD_SCENE:AddFragment(CLOCKUI_SCENE_FRAGMENT)
        HUD_UI_SCENE:AddFragment(CLOCKUI_SCENE_FRAGMENT)
    else
        HUD_SCENE:RemoveFragment(CLOCKUI_SCENE_FRAGMENT)
        HUD_UI_SCENE:RemoveFragment(CLOCKUI_SCENE_FRAGMENT)
    end

    vi.HideBackground(cl.st.ShowBg())
    vi.HideMoon(cl.st.ShowMoon())
    vi.HideClock(cl.st.IsActive())
end

function vi.HideBackground(value)
    local value = not value
    vi.background:SetHidden(value)
end

function vi.HideMoon(value)
    local value = not value
    vi.moontexture:SetHidden(value)
    vi.moonlabel:SetHidden(value)
end

function vi.InitMoon()
	vi.moontexture = WINDOW_MANAGER:GetControlByName("cl_moontexture")
	if not vi.moontexture then
        vi.moontexture = WINDOW_MANAGER:CreateControl("cl_moontexture", ClockUITime, CT_TEXTURE)
	end
	vi.moonlabel = WINDOW_MANAGER:GetControlByName("cl_moonlabel")
	if not vi.moonlabel then
        vi.moonlabel = WINDOW_MANAGER:CreateControl("cl_moonlabel", ClockUITime, CT_LABEL)
	end
end

function vi.HideClock(value)
    local value = not value
    ClockUITime:SetHidden(value)
end

function vi.InitClock()
    loc = cl.ln.vi

    ClockUI:ClearAnchors()
    ClockUI:SetAnchor(CENTER, GuiRoot, TOPLEFT, cl.st.GetPosition())

    ClockUITime:ClearAnchors()
    ClockUITime:SetAnchor(CENTER, ClockUI, CENTER, 0, 0)

	vi.background = WINDOW_MANAGER:GetControlByName("cl_background")
	if not vi.background then
		vi.background = WINDOW_MANAGER:CreateControl("cl_background", ClockUITime, CT_TEXTURE)
	end

    -- Thanks Garkin for the method
    CALLBACK_MANAGER:RegisterCallback("LAM-PanelControlsCreated",
        function(panel)
            if panel == ClockSettings then
				if cl.st.AutoHide() then
					GAME_MENU_SCENE:AddFragment(CLOCKUI_SCENE_FRAGMENT)
				end
                ZO_PreHookHandler(ClockSettings, "OnShow", function() GAME_MENU_SCENE:AddFragment(CLOCKUI_SCENE_FRAGMENT) end)
                ZO_PreHookHandler(ClockSettings, "OnHide", function() GAME_MENU_SCENE:RemoveFragment(CLOCKUI_SCENE_FRAGMENT) end)
            end
        end)
    CLOCKUI_SCENE_FRAGMENT = ZO_HUDFadeSceneFragment:New(ClockUI)

    vi.UpdateClock()
end
