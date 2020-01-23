--[[----------------------------------------------------
    Location:   Test/Core/SettingsTest.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    Updated:    2020-01-23
    License:    GPL-3.0
----------------------------------------------------]]--

require("Lib.Core.Constants")

--- Requires busted https://github.com/Olivine-Labs/busted
-- to run busted: run "luarocks install busted" then "busted -p Test -R Test/ --coverage"
local function Test()
    describe("Constants test", function()
        it("should be read-only", function()
            -- assert
            assert.has_no.errors(function()
                local name = Clock_TST.CONSTANTS.NAME
            end)
            assert.has.error(function()
                    Clock_TST.CONSTANTS.NAME = "Test"
            end)
        end)
    end)
end

Test()
