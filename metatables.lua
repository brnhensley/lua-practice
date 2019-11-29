tableX = {}
tableY = {}
tableZ = {}

for i = 1, 10 do
    tableX[i] = i * 2
    tableY[i] = i
    tableZ[i] = i * 5
end

-- metatables define how tables _add -- _sub _mul _div _mod _concat aka ..
metatable = {
    -- add tables
    __add = function(table1, table2)
        sumTable = {}

        for j = 1, #table1 do
            if (table1[j] ~= nil) and (table2[j] ~= nil) then
                sumTable[j] = table1[j] + table2[j]
            else
                sumTable[j] = 0
            end
        end

        return sumTable
    end,

    __sub = function(table1, table2)
        subTable = {}

        for j = 1, #table1 do
            if (table1[j] ~= nil) and (table2[j] ~= nil) then
                subTable[j] = table1[j] - table2[j]
            else
                subTable[j] = 0
            end
        end

        return subTable
    end,

    __mul = function(table1, table2)
        mulTable = {}

        for j = 1, #table1 do
            if (table1[j] ~= nil) and (table2[j] ~= nil) then
                mulTable[j] = table1[j] * table2[j]
            else
                mulTable[j] = 0
            end
        end

        return mulTable
    end,

    __div = function(table1, table2)
        divTable = {}

        for j = 1, #table1 do
            if (table1[j] ~= nil) and (table2[j] ~= nil) then
                divTable[j] = table1[j] / table2[j]
            else
                divTable[j] = 0
            end
        end

        return divTable
    end,

    __mod = function(table1, table2)
        modTable = {}

        for j = 1, #table1 do
            if (table1[j] ~= nil) and (table2[j] ~= nil) then
                modTable[j] = table1[j] % table2[j]
            else
                modTable[j] = 0
            end
        end

        return modTable
    end,

    -- concat
    __concat = function(table1, table2)
        concatTable = {}

        for j = 1, #table1 do
            if (table1[j] ~= nil) and (table2[j] ~= nil) then
                subTable[j] = table1[j] .. table2[j]
            elseif (table1[j] ~= nil) and (table2[j] == nil) then
                subTable[j] = table1[j]
            elseif (table1[j] == nil) and (table2[j] ~= nil) then
                subTable[j] = table2[j]
            end
        end

        return subTable
    end,

    -- checkign for equality
    __eq = function(table1, table2)
        return table1.value == table2.value
    end,

    -- check less than
    __lt = function(table1, table2)
        return table1.value < table2.value
    end,

    -- check less than or equal to than
    __lt = function(table1, table2)
        return table1.value <= table2.value
    end,

    -- check greater than
    __gt = function(table1, table2)
        return table1.value > table2.value
    end,

    -- check greater than or equal to than
    __lt = function(table1, table2)
        return table1.value >= table2.value
    end
}

-- create metamethods for the metatable
-- metatable methods work with any two tables as long as tableX is one of them:
-- GOOD : tableX + tableY
-- BAD :  tableY + tableY
setmetatable(tableX, metatable)

addTable = {}
addTable = tableX + tableY

print("ADD")
for x=1, #tableX do
    print(addTable[x])
end

subTable = {}
subTable = tableX - tableY

print("SUBTRACT")
for x=1, #tableX do
    print(subTable[x])
end

mulTable = {}
mulTable = tableX * tableZ

print("MULTIPLY")
for x=1, #tableX do
    print(mulTable[x])
end

divTable = {}
divTable = tableZ / tableX

print("DIVIDE")
for x=1, #tableX do
    print(divTable[x])
end

modTable = {}
modTable = tableZ % tableX

print("MODULO")
for x=1, #tableX do
    print(modTable[x])
end

conTable = {}
conTable = tableX .. tableX

print("CONCAT")
for x=1, #tableX do
    print(conTable[x])
end
