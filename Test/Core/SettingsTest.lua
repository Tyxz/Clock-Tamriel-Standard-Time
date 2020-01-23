--[[----------------------------------------------------
    Location:   Test/Core/SettingsTest.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    Updated:    2020-01-23
    License:    GPL-3.0
----------------------------------------------------]]--

require("Lib.Core.Utility")
require("Lib.Core.Constants")
require("Lib.Core.Settings")
require("Test.Utility.lua")

--- Requires busted https://github.com/Olivine-Labs/busted
-- to run busted: run "luarocks install busted" then "busted -o utfTerminal -p Test -R Test/"
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
            tSettings = Settings:New()
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
                        assert.is_not.nil_or_empty(tIsVisible)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = true
                        -- act
                        assert.has_no.errors(tSettings:SetMoonIsVisible(tValue))
                        local tIsVisible = tSettings:GetMoonIsVisible()
                        -- assert
                        assert.is.same(tValue, tIsVisible)
                    end)
                end)
                describe("isMoveable", function()
                    it("should return value", function()
                        -- act
                        local tIsMoveable = tSettings:GetMoonIsMoveable()
                        -- assert
                        assert.is_not.nil_or_empty(tIsMoveable)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = true
                        -- act
                        assert.has_no.errors(tSettings:SetMoonIsMoveable(tValue))
                        local tIsMoveable = tSettings:GetMoonIsMoveable()
                        -- assert
                        assert.is.same(tValue, tIsMoveable)
                    end)
                end)
                describe("isMouseEnabled", function()
                    it("should return value", function()
                        -- act
                        local tIsMouseEnabled = tSettings:GetMoonIsMouseEnabled()
                        -- assert
                        assert.is_not.nil_or_empty(tIsMouseEnabled)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = true
                        -- act
                        assert.has_no.errors(tSettings:SetMoonIsMouseEnabled(tValue))
                        local tIsMouseEnabled = tSettings:GetMoonIsMouseEnabled()
                        -- assert
                        assert.is.same(tValue, tIsMouseEnabled)
                    end)
                end)
                describe("hasBackground", function()
                    it("should return value", function()
                        -- act
                        local tHasBackground = tSettings:GetMoonHasBackground()
                        -- assert
                        assert.is_not.nil_or_empty(tHasBackground)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = true
                        -- act
                        assert.has_no.errors(tSettings:SetMoonHasBackground(tValue))
                        local tHasBackground = tSettings:GetMoonHasBackground()
                        -- assert
                        assert.is.same(tValue, tHasBackground)
                    end)
                end)
                describe("isLinkedToTime", function()
                    it("should return value", function()
                        -- act
                        local tIsLinkedToTime = tSettings:GetMoonIsLinkedToTime()
                        -- assert
                        assert.is_not.nil_or_empty(tIsLinkedToTime)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = true
                        -- act
                        assert.has_no.errors(tSettings:SetMoonIsLinkedToTime(tValue))
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
                        assert.has_no.errors(tSettings:SetMoonBackground(tValue))
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

