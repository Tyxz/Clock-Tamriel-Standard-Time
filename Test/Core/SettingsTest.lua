--[[----------------------------------------------------
    Location:   Test/Core/SettingsTest.lua
    Author:     Arne Rantzen (Tyx)
    Created:    2020-01-23
    Updated:    2020-01-23
    License:    GPL-3.0
----------------------------------------------------]]--

require("Lib.Core.Constants")
require("Lib.Core.Utility")
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
                New = function(_, _, _, _, default)
                    return Clock_TST:Copy(default)
                end
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
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonBackground(tValue)
                        end)
                        local tBackground = tSettings:GetMoonBackground()
                        -- assert
                        assert.is.same(tValue, tBackground)
                    end)
                end)
            end)
            describe("Attributes", function()
                describe("Root", function()
                    it("should return value", function()
                        -- act
                        local tAnchor = tSettings:GetMoonAnchor()
                        -- assert
                        assert.is_not.nil_or_empty(tAnchor)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = {
                            point = "CENTER",
                            relativeTo = "GuiRoot",
                            relativePoint = "CENTER",
                            offsetX = 0,
                            offsetY = 0,
                        }
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonAnchor(tValue)
                        end)
                        local tAnchor = tSettings:GetMoonAnchor()
                        -- assert
                        assert.is.same(tValue, tAnchor)
                    end)
                    it("should return value", function()
                        -- act
                        local tDimension = tSettings:GetMoonDimension()
                        -- assert
                        assert.is_not.nil_or_empty(tDimension)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = {
                            width = nil,
                            height = nil,
                        }
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonDimension(tValue)
                        end)
                        local tDimension = tSettings:GetMoonDimension()
                        -- assert
                        assert.is.same(tValue, tDimension)
                    end)
                end)
                describe("Masser", function()
                    it("should return value", function()
                        -- act
                        local tAnchor = tSettings:GetMoonAnchorMasser()
                        -- assert
                        assert.is_not.nil_or_empty(tAnchor)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = {
                            point = "CENTER",
                            relativeTo = "GuiRoot",
                            relativePoint = "CENTER",
                            offsetX = 0,
                            offsetY = 0,
                        }
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonAnchorMasser(tValue)
                        end)
                        local tAnchor = tSettings:GetMoonAnchorMasser()
                        -- assert
                        assert.is.same(tValue, tAnchor)
                    end)
                    it("should return value", function()
                        -- act
                        local tDimension = tSettings:GetMoonDimensionMasser()
                        -- assert
                        assert.is_not.nil_or_empty(tDimension)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = {
                            width = nil,
                            height = nil,
                        }
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonDimensionMasser(tValue)
                        end)
                        local tDimension = tSettings:GetMoonDimensionMasser()
                        -- assert
                        assert.is.same(tValue, tDimension)
                    end)
                end)
                describe("Secunda", function()
                    it("should return value", function()
                        -- act
                        local tAnchor = tSettings:GetMoonAnchorSecunda()
                        -- assert
                        assert.is_not.nil_or_empty(tAnchor)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = {
                            point = "CENTER",
                            relativeTo = "GuiRoot",
                            relativePoint = "CENTER",
                            offsetX = 0,
                            offsetY = 0,
                        }
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonAnchorSecunda(tValue)
                        end)
                        local tAnchor = tSettings:GetMoonAnchorSecunda()
                        -- assert
                        assert.is.same(tValue, tAnchor)
                    end)
                    it("should return value", function()
                        -- act
                        local tDimension = tSettings:GetMoonDimensionSecunda()
                        -- assert
                        assert.is_not.nil_or_empty(tDimension)
                    end)
                    it("should set value", function()
                        -- arrange
                        local tValue = {
                            width = nil,
                            height = nil,
                        }
                        -- act
                        assert.has_no.errors(function()
                            tSettings:SetMoonDimensionSecunda(tValue)
                        end)
                        local tDimension = tSettings:GetMoonDimensionSecunda()
                        -- assert
                        assert.is.same(tValue, tDimension)
                    end)
                end)
            end)
        end)

        describe("Reset", function()
            local function TestStyles()
                local tMoonBackground = tSettings:GetMoonBackground()
                local tConstMoonBackground = Clock_TST.CONSTANTS.Settings.styles.DEFAULTS.moon.background
                assert.is.same(tMoonBackground, tConstMoonBackground)

            end
            local function TestAttributes()
                local tMoonDimension = tSettings:GetMoonDimension()
                local tConstMoonDimension = Clock_TST.CONSTANTS.Settings.attributes.DEFAULTS.moon.dimension
                assert.is.same(tMoonDimension, tConstMoonDimension)

            end
            local function TestBooleans()
                local tIsMoonVisible = tSettings:GetMoonIsVisible()
                local tConstIsMoonVisible = Clock_TST.CONSTANTS.Settings.booleans.DEFAULTS.moon.isVisible
                assert.is.same(tIsMoonVisible, tConstIsMoonVisible)

            end
            it("should reset styles to the constant defaults", function()
                -- arrange
                tSettings:SetMoonBackground(nil)
                -- act
                tSettings:ResetStyles()
                TestStyles()
            end)
            it("should reset booleans to the constant defaults", function()
                -- arrange
                tSettings:SetMoonIsVisible(nil)
                -- act
                tSettings:ResetBooleans()
                TestBooleans()
            end)
            it("should reset attributes to the constant defaults", function()
                -- arrange
                tSettings:SetMoonDimension(nil)
                -- act
                tSettings:ResetAttributes()
                TestAttributes()
            end)
            it("should reset all settings to the constant defaults", function()
                -- arrange
                tSettings:SetMoonIsVisible(nil)
                tSettings:SetMoonBackground(nil)
                tSettings:SetMoonDimension(nil)
                -- act
                tSettings:Reset()
                TestBooleans()
                TestAttributes()
                TestStyles()
            end)
            it("should not change constants after reset", function()
                tSettings:SetMoonDimension(nil)
                tSettings:ResetAttributes()
                tSettings:SetMoonDimension(nil)
                local tDimension = tSettings:GetMoonDimension()
                local tConstant = Clock_TST.CONSTANTS.Settings.attributes.DEFAULTS.moon.dimension

                assert.is_not.same(tDimension, tConstant)
            end)
        end)
    end)
end

Test()

