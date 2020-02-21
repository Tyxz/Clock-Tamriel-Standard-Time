package.path = '../?.lua;' .. package.path

local json = require('cjson')
local path = require("pl.path")
local languages = {
    "en", "de", "fr", "ru", "jp"
}
os.execute("mkdir " .. "I18N")
local jsonPath = path.join("I18N", "Json")
local luaPath = path.join("I18N", "Lua")
os.execute("mkdir " .. jsonPath)
os.execute("mkdir " .. luaPath)

for _, v in pairs(languages) do
    require("Asset.I18n." .. v)
    local file = path.join(jsonPath,  v .. ".json")
    file = io.open (file, "w")
    file:write(json.encode(Clock_TST.I18N()))
    file:close()
end

local function out(table, file, i)
    local function tab()
        for _ = 0, i do
            file:write("\t")
        end
    end
    local function key(k)
        if type(k) == "number" then
            return "[" .. k .. "]"
        elseif tostring(k):match(" ") then
            return "[\"" .. k .. "\"]"
        else
            return k
        end
    end
    local function value(v)
        if tostring(v):match("\n") then
            local t = ""
            for _ = 0, i+1 do
                t = t .. "\t"
            end
            v = string.gsub(v, "\"", "\\\"")
            v = string.gsub(v, "\n", "\\n\"\n" .. t .. ".. \"")

            return v
        else
            return v
        end
    end
    file:write("{\r\n")
    for k,v in pairs(table) do
        if v ~= nil then
            if type(v) == "table" then
                tab()
                file:write(key(k) .. " = ")
                out(v, file, i + 1)
            else
                tab()
                file:write(key(k) .. " = \"" .. value(v) .. "\",\r\n")
            end
        else
            tab()
            file:write("\"" .. k .."\",\r\n")
        end
    end
    i = i - 1
    tab()
    if i == 0 then
        file:write("}\r\n")
    else
        file:write("},\r\n")
    end
end

for _, v in pairs(languages) do
    local inFile = path.join(jsonPath,  v .. ".json")
    local outFile = path.join(luaPath,  v .. ".lua")
    os.execute("rm " .. outFile)
    inFile = io.open (inFile, "r")
    outFile = io.open (outFile, "w")
    outFile:write(
            "--[[--------------------------------------------\n"
            .. "    Author:     Arne Rantzen (Tyx)\n"
            .. "    Created:    2020-01-22\n"
            .. "    Updated:    " .. os.date("%Y-%m-%d") .. "\n"
            .. "    License:    GPL-3.0\n"
            .. "--------------------------------------------]]--\n\n")
    outFile:write("Clock_TST = Clock_TST or {}\n")
    outFile:write("function Clock_TST.I18N()\n\treturn ")
    out(json.decode(inFile:read()), outFile, 1)
    outFile:write("end")
    outFile:close()
    inFile:close()
end
