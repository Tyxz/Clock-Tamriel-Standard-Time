--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-23
    Updated:    2020-02-23
    License:    GPL-3.0
--------------------------------------------]]--
insulate("I18n", function()
    require("Test.ZoMock")

    setup(function()
        stub(_G, "ZO_CreateStringId")
        require("Asset.I18n.en")
    end)

    before_each(function()
        require("Lib.Core.I18n")
    end)

    it("should create a ZO String object for the toggle bindings", function()
        assert.stub(_G.ZO_CreateStringId).was_called(3)
    end)
end)