--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-24
    Updated:    2020-02-24
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
            _G.LibDebugLogger = spy.new(function(_) end)
            stub(Clock_TST, "SetupSettings")
            stub(Clock_TST, "SetupBindings")
            stub(Clock_TST, "SetupMenu")
            require("Lib.Clock")
        end)
        it("should start on addon loaded", function()
            assert.spy(EVENT_MANAGER.RegisterForEvent).was.called_with(
                    match.is_ref(EVENT_MANAGER), match.is_string(), EVENT_ADD_ON_LOADED, match.is_function()
            )
        end)
        it("should unregister after loaded once", function()
            assert.spy(EVENT_MANAGER.UnregisterForEvent).was.called_with(
                    match.is_ref(EVENT_MANAGER), match.is_string(), EVENT_ADD_ON_LOADED
            )
        end)
        it("should setup Settings", function()
            assert.stub(Clock_TST.SetupSettings).was.called_with( match.is_ref(Clock_TST) )
        end)
        it("should setup Bindings", function()
            assert.stub(Clock_TST.SetupBindings).was.called_with( match.is_ref(Clock_TST) )
        end)
        it("should setup Menu", function()
            assert.stub(Clock_TST.SetupMenu).was.called_with( match.is_ref(Clock_TST) )
        end)
        it("should setup Logger", function()
            assert.spy(LibDebugLogger).was.called_with(match.is_string())
        end)
    end)
end)