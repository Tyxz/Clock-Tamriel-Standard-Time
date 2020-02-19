describe("Utility", function()
    _G.ZO_ONE_MONTH_IN_SECONDS = 2592000
    require("Lib.Core.Utility")

    it("should return the length if there is only a single line", function()
        local tOne = "Test"
        local tLength = tOne:len()
        assert.same(tLength, Clock_TST.GetLargestLine(tOne))
    end)

    it("should return the length of the longest line in string", function()
        local tShort, tLong = "Test", "Longer test"
        local tLength = tLong:len()
        assert.same(tLength, Clock_TST.GetLargestLine(tShort .. "\n" .. tLong))
    end)
end)