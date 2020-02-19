--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-19
    Updated:    2020-02-19
    License:    GPL-3.0
--------------------------------------------]]--
package.path = '../LibClockTST/?.lua;' .. package.path

describe("Time", function()
    require("Test.Utility")
    require("Test.ZoMock")
    require("Lib.LibClockTST")
    require("Asset.I18n.en")
    require("Lib.Data.Constants")
    require("Lib.Data.Settings")
    --local match = require("luassert.match")
    describe("start", function()
        setup(function()
            require("Lib.Feature.Time.Time")
        end)
        it("should create global time object", function()
            assert.is_not.nil_or_empty(Clock_TST.time)
        end)
    end)
end)