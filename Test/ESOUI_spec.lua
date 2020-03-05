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
end)