-- multi-dimentional tables
--indexes are whatever they are defined as?

multiTable = {}

for i = 100, 109 do
    multiTable[i] = {}
    for j = 100, 109 do
        multiTable[i][j] = tostring(i) .. tostring(j)
    end
end

for i = 100, 109 do
    for j = 100, 109 do
        io.write(multiTable[i][j], " : ")
    end
    print()
end

-- index [1][1] doesn't exist because we defined the first index as 100 and it's an array that also starts ar 100
print(multiTable[1][1])         -- doesn't work
print(multiTable[100][109])     -- works