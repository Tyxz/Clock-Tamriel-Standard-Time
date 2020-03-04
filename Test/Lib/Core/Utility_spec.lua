--[[--------------------------------------------
    Project:    Clock - Tamriel Standard Time
    Author:     Arne Rantzen (Tyx)
    Created:    2020-02-18
    Updated:    2020-02-19
    License:    GPL-3.0
--------------------------------------------]]--

describe("Utility", function()
    require("Test.Lib.Core.Utility")
    require("Lib.Core.Utility")

    describe("GetLargestLine", function()
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

    it("should return the a list of keys", function()
        local tTest = {a = "Test1", [2] = "Test2", "Test3"}
        local tExpect = {1, "a", 2}
        local tResult = Clock_TST.GetKeys(tTest)
        assert.same(tExpect, tResult)
    end)

    describe("DeepCopy", function()
        it("should copy an table deeply", function()
            local tDeepTable = {a={b={c=1}}}
            local tResult = Clock_TST.DeepCopy(tDeepTable)
            tResult.a.b.c = 2
            assert.is_not.same(tDeepTable, tResult)
        end)
    end)

    describe("SelectiveCopy", function()
        local tTable = {
            a = {
                a = {
                    a = 1
                },
                b = 2
            },
            b = 3
        }
        it("should copy deeply but only different objects", function()
            local tDefault = {a={a={a=1}}}
            local tExpect = {a={b=2},b=3}
            local tResult = Clock_TST.SelectiveCopy(tTable, tDefault)
            assert.is.same(tExpect, tResult)
        end)
        it("should return a deep copy if default is empty", function()
            local tDefault = {}
            local tExpect = tTable
            local tResult = Clock_TST.SelectiveCopy(tTable, tDefault)
            assert.is.same(tExpect, tResult)
        end)
        it("should return a deep copy if default is nil", function()
            local tDefault = nil
            local tExpect = tTable
            local tResult = Clock_TST.SelectiveCopy(tTable, tDefault)
            assert.is.same(tExpect, tResult)
        end)
        it("should skip ignored keys", function()
            local tDefault = nil
            local tSkip = "a"
            local tExpect = { b = 3 }
            local tResult = Clock_TST.SelectiveCopy(tTable, tDefault, tSkip)
            assert.is.same(tExpect, tResult)
        end)
        it("should skip ignored multiple keys", function()
            local tDefault = nil
            local tSkip1 = "a"
            local tSkip2 = "b"
            local tExpect = nil
            local tResult = Clock_TST.SelectiveCopy(tTable, tDefault, tSkip1, tSkip2)
            assert.is.same(tExpect, tResult)
        end)

    end)

    describe("DeepCompare", function()
        local tDeepTable = {a={b={c=1}}}
        it("should find out if two tables are equal", function()
            local tResult = Clock_TST.DeepCompare(tDeepTable, tDeepTable)
            assert.truthy(tResult)
        end)
        it("should find out if two tables are not equal", function()
            local tDeepTable2 = {a={b={c=2}}}
            local tResult = Clock_TST.DeepCompare(tDeepTable, tDeepTable2)
            assert.falsy(tResult)
        end)
        it("should find out if two tables are not equal if one is nil", function()
            local tResult = Clock_TST.DeepCompare(tDeepTable, nil)
            assert.falsy(tResult)
        end)
        it("should find out if two tables are not equal if one is empty", function()
            local tResult = Clock_TST.DeepCompare(tDeepTable, {})
            assert.falsy(tResult)
        end)
        it("should find out if two tables are not equal if both are not tables", function()
            local tResult = Clock_TST.DeepCompare(1, 2)
            assert.falsy(tResult)
        end)
        it("should find out if two tables are equal if both are empty", function()
            local tResult = Clock_TST.DeepCompare({}, {})
            assert.truthy(tResult)
        end)
    end)
    describe("MergeTable", function()
        local tTable
        before_each(function()
            tTable = setmetatable({a={b={c=1}}}, {__index = table})
        end)
        it("should merge two tables", function()
            local tTable2 = {a={d=2}}
            local tExpect = {a={b={c=1}, d=2}}
            local tResult = Clock_TST.MergeTable(tTable, tTable2)
            assert.same(tExpect, tResult)
        end)
        it("should merge multiple tables", function()
            local tTable2 = {a={d=2}}
            local tTable3 = {e=3}
            local tExpect = {a={b={c=1}, d=2}, e=3}
            local tResult = Clock_TST.MergeTable(tTable, tTable2, tTable3)
            assert.same(tExpect, tResult)
        end)
        it("should not change metatable of first table", function()
            local tTable2 = {a={d=2}}
            local tExpect = table.insert
            local tResult = Clock_TST.MergeTable(tTable, tTable2).insert
            assert.equal(tExpect, tResult)
        end)
        it("should return first table if other are empty", function()
            local tTable2 = {}
            local tExpect = tTable
            local tResult = Clock_TST.MergeTable(tTable, tTable2)
            assert.same(tExpect, tResult)
        end)
        it("should return first table if other are nil", function()
            local tTable2 = nil
            local tExpect = tTable
            local tResult = Clock_TST.MergeTable(tTable, tTable2)
            assert.same(tExpect, tResult)
        end)
    end)
end)