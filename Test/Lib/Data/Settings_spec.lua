--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-19
    Updated:    2020-02-19
    License:    GPL-3.0
--------------------------------------------]]--
describe("Settings", function()
    require("Test.ZoMock")
    require("Test.Utility")
    require("Lib.Data.Constants")
    local match = require("luassert.match")
    insulate("load", function()
        setup(function()
            _G.EVENT_MANAGER = mock(EVENT_MANAGER)
        end)
        it("should create saved variables when loaded", function()
            require("Lib.Data.Settings")
            assert.spy(EVENT_MANAGER.RegisterForEvent).was.called_with(
                    match.is_ref(EVENT_MANAGER), match.is_string(), EVENT_ADD_ON_LOADED, match.is_function()
            )
        end)
        it("should unregister after loaded once", function()
            require("Lib.Data.Settings")
            assert.spy(EVENT_MANAGER.UnregisterForEvent).was.called_with(
                    match.is_ref(EVENT_MANAGER), match.is_string(), EVENT_ADD_ON_LOADED
            )
        end)
        it("should create global settings object", function()
            Clock_TST.settings = nil
            require("Lib.Data.Settings")
            assert.is_not.nil_or_empty(Clock_TST.settings)
        end)
    end)
    describe("Reset", function()
        local tBool, tStyle, tAtr

        before_each(function()
            require("Lib.Data.Settings")
            local tBoolRef = Clock_TST.settings.booleans.core
            tBoolRef.timeAndMoonAreLinked = not tBoolRef.timeAndMoonAreLinked
            tBool = tBoolRef.timeAndMoonAreLinked
            local tStyleRef = Clock_TST.settings.styles.moon
            tStyleRef.masser = "test"
            tStyle = tStyleRef.masser
            local tAtrRef = Clock_TST.settings.attributes.time.dimension
            tAtrRef.width = tAtrRef.width + 2
            tAtr = tAtrRef.width
        end)
        it("should reset only the booleans", function()
            Clock_TST.settings:ResetBooleans()
            assert.is_not.equal(tBool, Clock_TST.settings.booleans.core.timeAndMoonAreLinked)
            assert.is.equal(tStyle, Clock_TST.settings.styles.moon.masser)
            assert.is.equal(tAtr, Clock_TST.settings.attributes.time.dimension.width)
        end)
        it("should reset only the styles", function()
            Clock_TST.settings:ResetStyles()
            assert.is.equal(tBool, Clock_TST.settings.booleans.core.timeAndMoonAreLinked)
            assert.is_not.equal(tStyle, Clock_TST.settings.styles.moon.masser)
            assert.is.equal(tAtr, Clock_TST.settings.attributes.time.dimension.width)
        end)
        it("should reset only the attributes", function()
            Clock_TST.settings:ResetAttributes()
            assert.is.equal(tBool, Clock_TST.settings.booleans.core.timeAndMoonAreLinked)
            assert.is.equal(tStyle, Clock_TST.settings.styles.moon.masser)
            assert.is_not.equal(tAtr, Clock_TST.settings.attributes.time.dimension.width)
        end)
        it("should reset all", function()
            Clock_TST.settings:Reset()
            assert.is_not.equal(tBool, Clock_TST.settings.booleans.core.timeAndMoonAreLinked)
            assert.is_not.equal(tStyle, Clock_TST.settings.styles.moon.masser)
            assert.is_not.equal(tAtr, Clock_TST.settings.attributes.time.dimension.width)
        end)
    end)

    describe("booleans", function()
        require("Lib.Data.Settings")
        local settings = Clock_TST.settings
        local reference
        describe("account", function()
            reference = settings.account
            describe("SaveAccountWide", function()
                it("should store the value", function()
                    local tBool = not reference.saveAccountWide
                    settings:SetSaveAccountWide(tBool)
                    assert.is.same(tBool, reference.saveAccountWide)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetSaveAccountWide()
                    assert.is.same(reference.saveAccountWide, tResult)
                end)
            end)
        end)
        describe("core", function()
            reference = settings.booleans.core
            describe("TimeAndMoonAreLinked", function()
                it("should store the value", function()
                    local tBool = not reference.timeAndMoonAreLinked
                    settings:SetTimeAndMoonAreLinked(tBool)
                    assert.is.same(tBool, reference.timeAndMoonAreLinked)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeAndMoonAreLinked()
                    assert.is.same(reference.timeAndMoonAreLinked, tResult)
                end)
            end)
            describe("HideInFight", function()
                it("should store the value", function()
                    local tBool = not reference.hideInFight
                    settings:SetHideInFight(tBool)
                    assert.is.same(tBool, reference.hideInFight)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetHideInFight()
                    assert.is.same(reference.hideInFight, tResult)
                end)
            end)
            describe("OnlyShowOnMap", function()
                it("should store the value", function()
                    local tBool = not reference.onlyShowOnMap
                    settings:SetOnlyShowOnMap(tBool)
                    assert.is.same(tBool, reference.onlyShowOnMap)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetOnlyShowOnMap()
                    assert.is.same(reference.onlyShowOnMap, tResult)
                end)
            end)
        end)
        describe("time", function()
            reference = settings.booleans.time
            describe("TimeIsVisible", function()
                it("should store the value", function()
                    local tBool = not reference.isVisible
                    settings:SetTimeIsVisible(tBool)
                    assert.is.same(tBool, reference.isVisible)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeIsVisible()
                    assert.is.same(reference.isVisible, tResult)
                end)
            end)
            describe("TimeIsMouseEnabled", function()
                it("should store the value", function()
                    local tBool = not reference.isMouseEnabled
                    settings:SetTimeIsMouseEnabled(tBool)
                    assert.is.same(tBool, reference.isMouseEnabled)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeIsMouseEnabled()
                    assert.is.same(reference.isMouseEnabled, tResult)
                end)
            end)
            describe("TimeIsMovable", function()
                it("should store the value", function()
                    local tBool = not reference.isMovable
                    settings:SetTimeIsMovable(tBool)
                    assert.is.same(tBool, reference.isMovable)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeIsMovable()
                    assert.is.same(reference.isMovable, tResult)
                end)
            end)
            describe("TimeHasTooltip", function()
                it("should store the value", function()
                    local tBool = not reference.hasTooltip
                    settings:SetTimeHasTooltip(tBool)
                    assert.is.same(tBool, reference.hasTooltip)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeHasTooltip()
                    assert.is.same(reference.hasTooltip, tResult)
                end)
            end)
            describe("TimeHasBackground", function()
                it("should store the value", function()
                    local tBool = not reference.hasBackground
                    settings:SetTimeHasBackground(tBool)
                    assert.is.same(tBool, reference.hasBackground)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeHasBackground()
                    assert.is.same(reference.hasBackground, tResult)
                end)
            end)
            describe("TimeAddZero", function()
                it("should store the value", function()
                    local tBool = not reference.addZero
                    settings:SetTimeAddZero(tBool)
                    assert.is.same(tBool, reference.addZero)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeAddZero()
                    assert.is.same(reference.addZero, tResult)
                end)
            end)
            describe("TimeHasUSFormat", function()
                it("should store the value", function()
                    local tBool = not reference.hasUSFormat
                    settings:SetTimeHasUSFormat(tBool)
                    assert.is.same(tBool, reference.hasUSFormat)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeHasUSFormat()
                    assert.is.same(reference.hasUSFormat, tResult)
                end)
            end)
            describe("TimeHasJapFormat", function()
                it("should store the value", function()
                    local tBool = not reference.hasJapFormat
                    settings:SetTimeHasJapFormat(tBool)
                    assert.is.same(tBool, reference.hasJapFormat)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeHasJapFormat()
                    assert.is.same(reference.hasJapFormat, tResult)
                end)
            end)
            describe("TimeHasLoreDate", function()
                it("should store the value", function()
                    local tBool = not reference.hasLoreDate
                    settings:SetTimeHasLoreDate(tBool)
                    assert.is.same(tBool, reference.hasLoreDate)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeHasLoreDate()
                    assert.is.same(reference.hasLoreDate, tResult)
                end)
            end)
            describe("TimeHasFakeLoreDate", function()
                it("should store the value", function()
                    local tBool = not reference.hasFakeLoreDate
                    settings:SetTimeHasFakeLoreDate(tBool)
                    assert.is.same(tBool, reference.hasFakeLoreDate)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeHasFakeLoreDate()
                    assert.is.same(reference.hasFakeLoreDate, tResult)
                end)
            end)
            describe("TimeHasRealDate", function()
                it("should store the value", function()
                    local tBool = not reference.hasRealDate
                    settings:SetTimeHasRealDate(tBool)
                    assert.is.same(tBool, reference.hasRealDate)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeHasRealDate()
                    assert.is.same(reference.hasRealDate, tResult)
                end)
            end)
            describe("TimeScaleWhenHover", function()
                it("should store the value", function()
                    local tBool = not reference.scaleWhenHover
                    settings:SetTimeScaleWhenHover(tBool)
                    assert.is.same(tBool, reference.scaleWhenHover)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeScaleWhenHover()
                    assert.is.same(reference.scaleWhenHover, tResult)
                end)
            end)
            describe("TimeHighlightWhenHover", function()
                it("should store the value", function()
                    local tBool = not reference.highlightWhenHover
                    settings:SetTimeHighlightWhenHover(tBool)
                    assert.is.same(tBool, reference.highlightWhenHover)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeHighlightWhenHover()
                    assert.is.same(reference.highlightWhenHover, tResult)
                end)
            end)
        end)
        describe("moon", function()
            reference = settings.booleans.moon
            describe("MoonIsVisible", function()
                it("should store the value", function()
                    local tBool = not reference.isVisible
                    settings:SetMoonIsVisible(tBool)
                    assert.is.same(tBool, reference.isVisible)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonIsVisible()
                    assert.is.same(reference.isVisible, tResult)
                end)
            end)
            describe("MoonIsMouseEnabled", function()
                it("should store the value", function()
                    local tBool = not reference.isMouseEnabled
                    settings:SetMoonIsMouseEnabled(tBool)
                    assert.is.same(tBool, reference.isMouseEnabled)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonIsMouseEnabled()
                    assert.is.same(reference.isMouseEnabled, tResult)
                end)
            end)
            describe("MoonIsMovable", function()
                it("should store the value", function()
                    local tBool = not reference.isMovable
                    settings:SetMoonIsMovable(tBool)
                    assert.is.same(tBool, reference.isMovable)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonIsMovable()
                    assert.is.same(reference.isMovable, tResult)
                end)
            end)
            describe("MoonHasTooltip", function()
                it("should store the value", function()
                    local tBool = not reference.hasTooltip
                    settings:SetMoonHasTooltip(tBool)
                    assert.is.same(tBool, reference.hasTooltip)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonHasTooltip()
                    assert.is.same(reference.hasTooltip, tResult)
                end)
            end)
            describe("MoonHasBackground", function()
                it("should store the value", function()
                    local tBool = not reference.hasBackground
                    settings:SetMoonHasBackground(tBool)
                    assert.is.same(tBool, reference.hasBackground)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonHasBackground()
                    assert.is.same(reference.hasBackground, tResult)
                end)
            end)
            describe("MoonScaleWhenHover", function()
                it("should store the value", function()
                    local tBool = not reference.scaleWhenHover
                    settings:SetMoonScaleWhenHover(tBool)
                    assert.is.same(tBool, reference.scaleWhenHover)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonScaleWhenHover()
                    assert.is.same(reference.scaleWhenHover, tResult)
                end)
            end)
            describe("MoonHighlightWhenHover", function()
                it("should store the value", function()
                    local tBool = not reference.highlightWhenHover
                    settings:SetMoonHighlightWhenHover(tBool)
                    assert.is.same(tBool, reference.highlightWhenHover)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonHighlightWhenHover()
                    assert.is.same(reference.highlightWhenHover, tResult)
                end)
            end)
        end)
    end)

    describe("styles", function()
        require("Lib.Data.Settings")
        local settings = Clock_TST.settings
        local reference
        describe("time", function()
            reference = settings.styles.time
            describe("TimeFormat", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetTimeFormat(tStyle)
                    assert.is.same(tStyle, reference.format)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeFormat()
                    assert.is.same(reference.format, tResult)
                end)
            end)
            describe("TimeSize", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetTimeSize(tStyle)
                    assert.is.same(tStyle, reference.size)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeSize()
                    assert.is.same(reference.size, tResult)
                end)
            end)
            describe("TimeColour", function()
                it("should store the value", function()
                    local tR, tG, tB, tA = 1, 2, 3, 4
                    local tStyle = {
                        r = tR,
                        g = tG,
                        b = tB,
                        a = tA
                    }
                    settings:SetTimeColour(tR, tG, tB, tA)
                    assert.is.same(tStyle, reference.colour)
                end)
                it("should get the stored value", function()
                    local tR, tG, tB, tA = settings:GetTimeColour()
                    assert.is.same(reference.colour.r, tR)
                    assert.is.same(reference.colour.g, tG)
                    assert.is.same(reference.colour.b, tB)
                    assert.is.same(reference.colour.a, tA)
                end)
            end)
            describe("TimeFont", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetTimeFont(tStyle)
                    assert.is.same(tStyle, reference.font)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeFont()
                    assert.is.same(reference.font, tResult)
                end)
            end)
            describe("TimeStyle", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetTimeStyle(tStyle)
                    assert.is.same(tStyle, reference.style)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeStyle()
                    assert.is.same(reference.style, tResult)
                end)
            end)
            describe("TimeLineCount", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetTimeLineCount(tStyle)
                    assert.is.same(tStyle, reference.lineCount)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeLineCount()
                    assert.is.same(reference.lineCount, tResult)
                end)
            end)
            describe("TimeBackground", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetTimeBackground(tStyle)
                    assert.is.same(tStyle, reference.background)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeBackground()
                    assert.is.same(reference.background, tResult)
                end)
            end)
            describe("TimeBackgroundColour", function()
                it("should store the value", function()
                    local tR, tG, tB, tA = 1, 2, 3, 4
                    local tStyle = {
                        r = tR,
                        g = tG,
                        b = tB,
                        a = tA
                    }
                    settings:SetTimeBackgroundColour(tR, tG, tB, tA)
                    assert.is.same(tStyle, reference.backgroundColour)
                end)
                it("should get the stored value", function()
                    local tR, tG, tB, tA = settings:GetTimeBackgroundColour()
                    assert.is.same(reference.backgroundColour.r, tR)
                    assert.is.same(reference.backgroundColour.g, tG)
                    assert.is.same(reference.backgroundColour.b, tB)
                    assert.is.same(reference.backgroundColour.a, tA)
                end)
            end)
            describe("TimeBackgroundHoverColour", function()
                it("should store the value", function()
                    local tR, tG, tB, tA = 1, 2, 3, 4
                    local tStyle = {
                        r = tR,
                        g = tG,
                        b = tB,
                        a = tA
                    }
                    settings:SetTimeBackgroundHoverColour(tR, tG, tB, tA)
                    assert.is.same(tStyle, reference.backgroundHoverColour)
                end)
                it("should get the stored value", function()
                    local tR, tG, tB, tA = settings:GetTimeBackgroundHoverColour()
                    assert.is.same(reference.backgroundHoverColour.r, tR)
                    assert.is.same(reference.backgroundHoverColour.g, tG)
                    assert.is.same(reference.backgroundHoverColour.b, tB)
                    assert.is.same(reference.backgroundHoverColour.a, tA)
                end)
            end)
            describe("TimeBackgroundOffset", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetTimeBackgroundOffset(tStyle)
                    assert.is.same(tStyle, reference.backgroundOffset)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetTimeBackgroundOffset()
                    assert.is.same(reference.backgroundOffset, tResult)
                end)
            end)
        end)
        describe("moon", function()
            reference = settings.styles.moon
            describe("MoonBackground", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetMoonBackground(tStyle)
                    assert.is.same(tStyle, reference.background)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonBackground()
                    assert.is.same(reference.background, tResult)
                end)
            end)
            describe("MoonBackgroundColour", function()
                it("should store the value", function()
                    local tR, tG, tB, tA = 1, 2, 3, 4
                    local tStyle = {
                        r = tR,
                        g = tG,
                        b = tB,
                        a = tA
                    }
                    settings:SetMoonBackgroundColour(tR, tG, tB, tA)
                    assert.is.same(tStyle, reference.backgroundColour)
                end)
                it("should get the stored value", function()
                    local tR, tG, tB, tA = settings:GetMoonBackgroundColour()
                    assert.is.same(reference.backgroundColour.r, tR)
                    assert.is.same(reference.backgroundColour.g, tG)
                    assert.is.same(reference.backgroundColour.b, tB)
                    assert.is.same(reference.backgroundColour.a, tA)
                end)
            end)
            describe("MoonBackgroundHoverColour", function()
                it("should store the value", function()
                    local tR, tG, tB, tA = 1, 2, 3, 4
                    local tStyle = {
                        r = tR,
                        g = tG,
                        b = tB,
                        a = tA
                    }
                    settings:SetMoonBackgroundHoverColour(tR, tG, tB, tA)
                    assert.is.same(tStyle, reference.backgroundHoverColour)
                end)
                it("should get the stored value", function()
                    local tR, tG, tB, tA = settings:GetMoonBackgroundHoverColour()
                    assert.is.same(reference.backgroundHoverColour.r, tR)
                    assert.is.same(reference.backgroundHoverColour.g, tG)
                    assert.is.same(reference.backgroundHoverColour.b, tB)
                    assert.is.same(reference.backgroundHoverColour.a, tA)
                end)
            end)
            describe("MoonTextureKeyMasser", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetMoonTextureKeyMasser(tStyle)
                    assert.is.same(tStyle, reference.masser)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonTextureKeyMasser()
                    assert.is.same(reference.masser, tResult)
                end)
            end)
            describe("MoonTextureKeySecunda", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetMoonTextureKeySecunda(tStyle)
                    assert.is.same(tStyle, reference.secunda)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonTextureKeySecunda()
                    assert.is.same(reference.secunda, tResult)
                end)
            end)
            describe("MoonAlpha", function()
                it("should store the value", function()
                    local tStyle = "Test"
                    settings:SetMoonAlpha(tStyle)
                    assert.is.same(tStyle, reference.alpha)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonAlpha()
                    assert.is.same(reference.alpha, tResult)
                end)
            end)
        end)
    end)

    describe("attributes", function()
        require("Lib.Data.Settings")
        local settings = Clock_TST.settings
        local reference
        describe("core", function()
            reference = settings.attributes.core
            describe("ScaleFactor", function()
                it("should store the value", function()
                    local tAtr = "Test"
                    settings:SetScaleFactor(tAtr)
                    assert.is.same(tAtr, reference.scaleFactor)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetScaleFactor()
                    assert.is.same(reference.scaleFactor, tResult)
                end)
            end)
        end)
        describe("time", function()
            reference = settings.attributes.time
            describe("TimeAttributes", function()
                it("should get the stored value", function()
                    local tResult = settings:GetTimeAttributes()
                    assert.is.same(reference, tResult)
                end)
            end)
            describe("TimeOffset", function()
                it("should store the value", function()
                    local tAtr = "Test"
                    settings:SetTimeOffset(tAtr, tAtr)
                    assert.is.same(tAtr, reference.anchor.offsetX)
                    assert.is.same(tAtr, reference.anchor.offsetY)
                end)
                it("should get the stored value", function()
                    local tResult = { settings:GetTimeOffset() }
                    assert.is.same({ reference.anchor.offsetX, reference.anchor.offsetY }, tResult)
                end)
            end)
            describe("TimeDimension", function()
                it("should get the stored value", function()
                    local tResult = settings:GetTimeDimension()
                    assert.is.same(reference.dimension, tResult)
                end)
            end)
        end)
        describe("moon", function()
            reference = settings.attributes.moon
            describe("MoonAttributes", function()
                it("should get the stored value", function()
                    local tResult = settings:GetMoonAttributes()
                    assert.is.same(reference, tResult)
                end)
            end)
            describe("MoonAnchor", function()
                it("should get the stored value", function()
                    local tResult = settings:GetMoonAnchor()
                    assert.is.same(reference.anchor, tResult)
                end)
            end)
            describe("MoonOffset", function()
                it("should store the value", function()
                    local tAtr = "Test"
                    settings:SetMoonOffset(tAtr, tAtr)
                    assert.is.same(tAtr, reference.anchor.offsetX)
                    assert.is.same(tAtr, reference.anchor.offsetY)
                end)
                it("should get the stored value", function()
                    local tResult = { settings:GetMoonOffset() }
                    assert.is.same({ reference.anchor.offsetX, reference.anchor.offsetY }, tResult)
                end)
            end)
            describe("TimeDimension", function()
                it("should store the value", function()
                    local tAtr = "Test"
                    settings:SetMoonDimension(tAtr)
                    assert.is.same(tAtr, reference.dimension)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonDimension()
                    assert.is.same(reference.dimension, tResult)
                end)
            end)
            describe("MasserAttributes", function()
                it("should get the stored value", function()
                    local tResult = settings:GetMoonMasserAttributes()
                    assert.is.same(reference.masser, tResult)
                end)
            end)
            describe("SecundaAttributes", function()
                it("should get the stored value", function()
                    local tResult = settings:GetMoonSecundaAttributes()
                    assert.is.same(reference.secunda, tResult)
                end)
            end)
            describe("MoonScale", function()
                it("should store the value", function()
                    local tAtr = "Test"
                    settings:SetMoonScale(tAtr)
                    assert.is.same(tAtr, reference.scale)
                end)
                it("should get the stored value", function()
                    local tResult = settings:GetMoonScale()
                    assert.is.same(reference.scale, tResult)
                end)
            end)
        end)
    end)
end)