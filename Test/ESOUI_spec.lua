--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-19
    Updated:    2020-02-19
    License:    GPL-3.0
--------------------------------------------]]--
describe("ESOUI", function()
    require("Test.ESOUI")

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

    describe("zo_strformat", function()
        it("should replace value", function()
            local tString = "<<1>> <<2>> <<3>>"
            local tExpected = "Test - Test"
            local tResult = zo_strformat(tString, "Test", "-", "Test")
            assert.same(tExpected, tResult)
        end)
    end)

    describe("ZO_GenerateCommaSeparatedList", function()
        it("should print only first element if single element", function()
            local tTable = { "Test" }
            local tExpected = "Test"
            local tResult = ZO_GenerateCommaSeparatedList(tTable)
            assert.same(tExpected, tResult)
        end)
        it("should print last element with and", function()
            local tTable = { "Test", "Test", "Test" }
            local tExpected = "Test, Test and Test"
            local tResult = ZO_GenerateCommaSeparatedList(tTable)
            assert.same(tExpected, tResult)
        end)
    end)
end)