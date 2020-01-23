--[[----------------------------------------------------
    Location:   Test/Core/SettingsTest.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    Updated:    2020-01-23
    License:    GPL-3.0
----------------------------------------------------]]--

require("Lib.Core.Constants")
require("Lib.Core.Settings")
require("Test.Utility")

--- Requires busted https://github.com/Olivine-Labs/busted
-- to run busted: run "luarocks install busted" then "busted -p Test -R Test/ --coverage"
local function Test()
    describe("Settings test", function()
        local tSettings
        local mZO_SavedVars
        setup(function()
            mZO_SavedVars = {
                New = function(_, _, _, _, default) return default end
            }
            _G.ZO_SavedVars = mock(mZO_SavedVars)
        end)

        it("should create a new Settings object", function()
            -- act
            tSettings = Clock_TST.Settings:New()
            -- assert
            assert.spy(mZO_SavedVars.New).was.called()
            assert.truthy(tSettings)
        end)

        describe("Moon", function()
            describe("Booleans", function()
                describe("isVisible", function()
                    it("should return value", function()
                        -- act
                        local tIsVisible = tSettings:GetMoonIsVisible()
                        -- assert
                        assert.is.boolean(tIsVisible)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = true
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonIsVisible(tValue)
                        end)
                        local tIsVisible = tSettings:GetMoonIsVisible()
                        -- assert
                        assert.is.same(tValue, tIsVisible)
                    end)
                    it("should return value", function()
                        -- act
                        local tIsMovable = tSettings:GetMoonIsMovable()
                        -- assert
                        assert.is.boolean(tIsMovable)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = true
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonIsMovable(tValue)
                        end)
                        local tIsMovable = tSettings:GetMoonIsMovable()
                        -- assert
                        assert.is.same(tValue, tIsMovable)
                    end)
                    it("should return value", function()
                        -- act
                        local tIsMouseEnabled = tSettings:GetMoonIsMouseEnabled()
                        -- assert
                        assert.is.boolean(tIsMouseEnabled)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = true
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonIsMouseEnabled(tValue)
                        end)
                        local tIsMouseEnabled = tSettings:GetMoonIsMouseEnabled()
                        -- assert
                        assert.is.same(tValue, tIsMouseEnabled)
                    end)
                    it("should return value", function()
                        -- act
                        local tHasBackground = tSettings:GetMoonHasBackground()
                        -- assert
                        assert.is.boolean(tHasBackground)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = true
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonHasBackground(tValue)
                        end)
                        local tHasBackground = tSettings:GetMoonHasBackground()
                        -- assert
                        assert.is.same(tValue, tHasBackground)
                    end)
                    it("should return value", function()
                        -- act
                        local tIsLinkedToTime = tSettings:GetMoonIsLinkedToTime()
                        -- assert
                        assert.is.boolean(tIsLinkedToTime)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = true
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonIsLinkedToTime(tValue)
                        end)
                        local tIsLinkedToTime = tSettings:GetMoonIsLinkedToTime()
                        -- assert
                        assert.is.same(tValue, tIsLinkedToTime)
                    end)
                end)
            end)

            describe("Styles", function()
                describe("Background", function()
                    it("should return value", function()
                        -- act
                        local tBackground = tSettings:GetMoonBackground()
                        -- assert
                        assert.is_not.nil_or_empty(tBackground)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = 100
                        local tResult = Clock_TST.CONSTANTS.UI.BACKGROUNDS.moon[tValue]
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonBackground(tValue)
                        end)
                        local tBackground = tSettings:GetMoonBackground()
                        -- assert
                        assert.is.same(tResult, tBackground)
                    end)
                end)
            end)
            describe("Attributes", function()
            end)
        end)        
    end)
end

Test()

