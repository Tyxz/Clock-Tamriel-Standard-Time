--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-19
    Updated:    2020-02-19
    License:    GPL-3.0
--------------------------------------------]]--
describe("Constant", function()
    require("Test.ZoMock")
    require("Lib.Data.Constants")

    it("should return independent instances", function()
        local tInstance1 = Clock_TST.CONSTANTS()
        local tInstance2 = Clock_TST.CONSTANTS()
        tInstance1.NAME = "Test"
        assert.is_not.same(tInstance1, tInstance2)
    end)
end)