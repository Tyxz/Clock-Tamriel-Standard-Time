--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-19
    Updated:    2020-02-19
    License:    GPL-3.0
--------------------------------------------]]--
describe("ZoMock", function()
    require("Test.ZoMock")

    insulate("Global functions", function()
        it("should return en as language", function()
            local tResult = GetCVar("Language.2")
            assert.equal("en", tResult)
        end)
        it("should print values", function()
            stub(_G, "print")
            local tPrint = "Test"
            d(tPrint, tPrint)
            assert.stub(print).was.called(2)
        end)
        it("should dump table", function()
            stub(require("pl.pretty"), "dump")
            local tDump = { "Test" }
            d(tDump)
            assert.stub(require("pl.pretty").dump).was.called_with(tDump)
        end)
    end)

    insulate("EVENT_MANAGER", function()
        it("should call function when register on load", function()
            local tSpy = spy.new(function()
            end)
            EVENT_MANAGER:RegisterForEvent(nil, EVENT_ADD_ON_LOADED, tSpy)
            assert.spy(tSpy).was.called()
        end)
        it("should be able to unregister", function()
            stub(EVENT_MANAGER, "UnregisterForEvent")
            EVENT_MANAGER:UnregisterForEvent(nil, EVENT_ADD_ON_LOADED)
            assert.stub(EVENT_MANAGER.UnregisterForEvent).was.called()
        end)
    end)

    describe("ZO_SavedVars", function()
        it("should return table if NewAccountWide was called", function()
            local tTable = { test = "Test" }
            local tResult = ZO_SavedVars:NewAccountWide(nil, nil, nil, tTable)
            assert.same(tTable, tResult)
        end)
        it("should return table if New was called", function()
            local tTable = { test = "Test" }
            local tResult = ZO_SavedVars:New(nil, nil, nil, tTable)
            assert.same(tTable, tResult)
        end)
    end)

    describe("Clock_TST_Time", function()
        it("should inherit methods of EVENT_MANAGER", function()
            d(_G.Clock_TST_Time)
        end)
    end)
end)