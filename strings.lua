name = "Brian"

io.write("My name is ", name, "\n")
-- "\n" adds a linebreak after it prints on console, only needed with io.write(), not print()
print("My name's lenght is",#name)

name = 666

print("My name is now the", type(name), name)
io.write("My name is now the ", type(name), " ", name, "\n")
-- io.write does less strange formatting of console logs

longString = [[
    Lots and lots and lots
    lots and lots and lots
    lots and lots and lots
    lots and lots and lots
    lots and lots and lots
    lots and lots and lots
    of ]]

longerString = longString .. name -- concatanation
io.write(longerString, "\n")

myDog = "Canada"
print(string.format("My dog is %s, she is %.0f years old", myDog, name))
--How to format a string with variables
-- %s inserts string
-- %f inserts decimal number,
--      %.0f would be a whole number
--      %.10f would be a number with ten decimals
-- %d inserts date format,
--      %02d for two digits

-- Date formatting
date = 2
month = 1
year = 2014
print(string.format("Date formatting %02d/%02d/%03d", date, month, year))