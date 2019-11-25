-- tables are replace lists, arrays, etc


myTable = {}

for i=1,10 do
    myTable[i] = i
    print(myTable[i])
end

numberOfItems = #myTable
io.write("number of myTable elements : ", numberOfItems, "\n")

-- table.insert( list, index to replace, value )
table.insert( myTable, 1, 666 )
print(myTable[1])

table.remove( myTable, 2 )
stringTable = table.concat( myTable, ", ")
io.write(stringTable, "\n")
