--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-23
    Updated:    2020-02-23
    License:    GPL-3.0
--------------------------------------------]]--
insulate("Bindings", function()
    require("Test.Lib.Feature.Bindings.Bindings")
    require("Lib.Data.Constants")
    require("Lib.Data.Settings")
    require("Lib.Feature.Bindings.Bindings")

    setup(function()
        Clock_TST.time = {}
        Clock_TST.moon = {}
        stub(Clock_TST.time, "UpdateVisibility")
        stub(Clock_TST.time, "UpdateMouse")
        stub(Clock_TST.moon, "UpdateVisibility")
        stub(Clock_TST.moon, "UpdateMouse")
        stub(Clock_TST, "Print")
        Clock_TST:SetupSettings()
        Clock_TST:SetupBindings()
    end)

    local function testTime(tOldVisibility)
        local tNewVisibility = Clock_TST.settings:GetTimeIsVisible()
        assert.stub(Clock_TST.time.UpdateVisibility).was_called()
        assert.stub(Clock_TST.time.UpdateMouse).was_called()
        assert.is_not.same(tOldVisibility, tNewVisibility)
    end

    local function testMoon(tOldVisibility)
        local tNewVisibility = Clock_TST.settings:GetTimeIsVisible()
        assert.stub(Clock_TST.time.UpdateVisibility).was_called()
        assert.stub(Clock_TST.time.UpdateMouse).was_called()
        assert.is_not.same(tOldVisibility, tNewVisibility)
    end

    it("should toggle the time visibility", function()
        local tVisibility =  Clock_TST.settings:GetTimeIsVisible()
        Clock_TST.bindings.ToggleTime()
        testTime(tVisibility)
    end)

    it("should toggle the moon visibility", function()
        local tVisibility =  Clock_TST.settings:GetMoonIsVisible()
        Clock_TST.bindings.ToggleMoon()
        testMoon(tVisibility)
    end)

    it("should toggle the time and moon visibility", function()
        local tTimeVisibility =  Clock_TST.settings:GetTimeIsVisible()
        local tMoonVisibility =  Clock_TST.settings:GetMoonIsVisible()
        Clock_TST.bindings.Toggle()
        testTime(tTimeVisibility)
        testMoon(tMoonVisibility)
    end)
end)