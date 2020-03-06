--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-19
    Updated:    2020-02-23
    License:    GPL-3.0
--------------------------------------------]]--
package.path = '../LibClockTST/?.lua;' .. package.path

insulate("Moon", function()
    require("Test.Lib.Feature.Moon.Moon")
    require("Lib.Data.Constants")
    require("Asset.I18n.en")
    require("Lib.Data.Settings")
    require("Lib.Feature.Moon.Moon")

    --[[
        describe("Setup", function()
            it("should store controls", function()
                Clock_TST.moon:SetupControls(Clock_TST_Moon)
                assert.is.equal(Clock_TST_Moon, Clock_TST.moon.control)
                assert.is_not.nil_or_empty(Clock_TST.moon.masser)
                assert.is_not.nil_or_empty(Clock_TST.moon.masser_background)
                assert.is_not.nil_or_empty(Clock_TST.moon.secunda)
                assert.is_not.nil_or_empty(Clock_TST.moon.secunda_background)
                assert.is_not.nil_or_empty(Clock_TST.MOON_FRAGMENT)
            end)
        end)
--]]

        describe("Register", function()
            setup(function()

            end)
        end)

        describe("Update", function()
            setup(function()

            end)
        end)

        describe("Start", function()
            setup(function()

            end)
        end)
    end)
