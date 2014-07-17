-------------------------------------------
-- moon
-------------------------------------------
cl.mn = {}

local mn = cl.mn

------------------
-- Phase
------------------
function mn.GetMoonPhase(osT)
    local day = cl.st.GetTime("daytime")
    local fullT = cl.st.GetMoon("full") * day
    local wayT = cl.st.GetMoon("way") * day
    local newT = cl.st.GetMoon("new") * day
    local phase = fullT + newT + wayT * 2
    local start = mn.CreateFullmoon(cl.st.GetMoon("name"), cl.st.GetMoon("start"))
    local moon

    while start + phase < osT do
        start = start + phase
    end

    local t = osT - start

    local full = fullT
    local waning = full + wayT
    local new = waning + newT
    local waxing = new + wayT

    if full >= t then
        moon = "full"
        t = full - t
    elseif waning >= t then
        moon = "waning"
        t = waning - t
    elseif new >= t then
        moon = "new"
        t = new - t
    else
        moon = "waxing"
        t = waxing - t
    end

    return moon, t
end

------------------
-- returns the UNIX stamp for fullmoon start
------------------
function mn.CreateFullmoon(name, t)
    local tSinceStart = t
    local day = cl.st.GetTime("daytime")
    local way = cl.st.GetMoon("way") * day
    local full = cl.st.GetMoon("full") * day

    if name == "new" then
        tSinceStart = tSinceStart - way - full
    end

    return tSinceStart
end