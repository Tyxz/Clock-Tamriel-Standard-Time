--[[----------------------------------------------------
    Location:   Test/Utility.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    License:    GPL-3.0
----------------------------------------------------]]--

local say = require("say")
local assert = require("luassert")

--- Register various extensions for the assert library
local function RegisterExtensions()

    --- Register new extension Empty
    local function RegisterNilOrEmpty()
        local function NilOrEmpty(state, arguments)
            if arguments.n ~= 1 then
                return not state.mod
            end
            local obj = arguments[1]
            local nilOrEmpty = obj ~= {} and string.match(tostring(obj), "^%s*$") == nil
            return nilOrEmpty == state.mod
        end

        say:set("assertion.nil_or_empty.positive", "Expected %s \nto be empty {}, '' or nil")
        say:set("assertion.nil_or_empty.negative", "Expected %s \nnot to be empty {}, '' or nil")
        assert:register(
                "assertion", "nil_or_empty", NilOrEmpty,
                "assertion.nil_or_empty.positive", "assertion.nil_or_empty.negative"
        )
    end

    --- Register new extension Empty
    local function RegisterBoolean()
        local function Boolean(state, arguments)
            if arguments.n ~= 1 then return not state.mod end
            local isBoolean = type(arguments[1]) == "boolean"
            return isBoolean == state.mod
        end

        say:set("assertion.boolean.positive", "Expected %s \nto be a boolean: %s")
        say:set("assertion.boolean.negative", "Expected %s \nnot to be a boolean: %s")
        assert:register("assertion", "boolean", Boolean, "assertion.boolean.positive", "assertion.boolean.negative")
    end

    RegisterNilOrEmpty()
    RegisterBoolean()
end

RegisterExtensions()
