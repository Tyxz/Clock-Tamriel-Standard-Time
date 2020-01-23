--[[----------------------------------------------------
    Location:   Test/Utility.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    License:    GPL-3.0
----------------------------------------------------]]--

require("say")

--- Register various extensions for the assert library
local function RegisterExtensions()

    --- Register new extension Empty
    local function RegisterNilOrEmpty()
        local function NilOrEmpty(_, obj)
            return obj ~= nil
                    and obj ~= {}
                    and string.match(tostring(obj), "^%s*$") == nil
        end

        say:set("assertion.nil_or_empty.positive", "Expected %s \nto be empty {}, '' or nil")
        say:set("assertion.nil_or_empty.negative", "Expected %s \nnot to be empty {}, '' or nil")
        assert:register("assertion", "nil_or_empty", NilOrEmpty, "assertion.nil_or_empty.positive", "assertion.nil_or_empty.negative")
    end

    RegisterNilOrEmpty()
end

return RegisterExtensions()
