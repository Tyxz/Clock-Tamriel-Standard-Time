--[[----------------------------------------------------
    Location:   Test/Core/SettingsTest.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    Updated:    2020-01-23
    License:    GPL-3.0
----------------------------------------------------]]--

require("Data.Constants")
require("Lib.Core.Utility")
require("Test.Utility")

--- Requires busted https://github.com/Olivine-Labs/busted
-- to run busted: run "luarocks install busted" then "busted -p Test -R Test/ --coverage"
local function Test()
    describe("Constants test", function()
        local Const = Clock_TST.CONSTANTS
--[[        it("should throw error when changing shallow entry", function()
            assert.has.error(function()
                Const.NAME = "New"
            end)
        end)
        it("should throw error when changing deep entry", function()
            assert.has.error(function()
                Const.UI.MOONS.secunda.full = "New"
            end)
        end)]]
        it("should not throw error when accessing shallow entry", function()
            assert.has_no.errors(function()
                local x = Const.NAME
            end)
        end)
        it("should not throw error when accessing deep entry", function()
            assert.has_no.errors(function()
                local x = Const.UI.MOONS.secunda.full
            end)
        end)
        it("should not be changed by reference", function()
            local tbl = Clock_TST:Copy(Const.UI.MOONS.secunda)
            tbl.full = "new"
            assert.is_not.same(tbl.full, Const.UI.MOONS.secunda.full)
        end)
    end)
end

Test()
