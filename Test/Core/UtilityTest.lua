--[[----------------------------------------------------
    Location:   Test/Core/UtilityTest.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    Updated:    2020-01-23
    License:    GPL-3.0
----------------------------------------------------]]--

require("Lib.Core.Utility")

describe("Utility test", function()
    it("should make table read-only", function()
        -- arrange
        local tTable = { test = "Test" }
        -- act
        local tReadOnly = Clock_TST:Protect(tTable)
        -- assert
        assert.has.error(function()
            tReadOnly.test = "new"
        end)
    end)
end)