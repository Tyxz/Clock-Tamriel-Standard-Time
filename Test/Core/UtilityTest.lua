--[[----------------------------------------------------
    Location:   Test/Core/SettingsTest.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    Updated:    2020-01-23
    License:    GPL-3.0
----------------------------------------------------]]--

require("Lib.Core.Utility")

--- Requires busted https://github.com/Olivine-Labs/busted
-- to run busted: run "luarocks install busted" then "busted -p Test -R Test/ --coverage"
local function Test()
    describe("Utility test", function()

        it("should not be changed by reference", function()
            local tTable = {
                sub = {
                    test1 = "1",
                    test2 = 2
                },
                test = 3
            }
            local tCopy = Clock_TST:Copy(tTable)
            tCopy.sub.test1 = nil
            tCopy.test = 4
            assert.is_not.same(tTable, tCopy)
            assert.is.same(tTable.sub.test2, tCopy.sub.test2)
        end)
    end)
end

Test()
