-- While loops
i = 0
while (i < 10) do
    io.write(i, "\n")
    i = i + 1

    if i == 8 then
        break
    end
end
io.write("\n")

-- Repeat Until, aka Do While
repeat
    io.write("Enter a number: ", "\n")
    number = tonumber(io.read()) --Take console input
until number == 666
print(string.format("That's right it's %s!", number, "\n"))

-- for loops
-- for i = starting number, ending number, increment number
-- leaving off the final number auto-incriments by 1
for i = 0, 9, 1 do
    io.write(i, "\n")
end

--  decriment with negative 1
for i = 9, 0, -1 do
    io.write(i, "\n")
end
