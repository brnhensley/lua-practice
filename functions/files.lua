--[[
    Different ways to work with files
    r: read only (default)
    w: overwrite or create a new file
    a: append or create a new file
    r+: read and write existing file
    w+: overwrite, read, or create a file
    a+: append, read, or create file
]]

-- create a new file
file = io.open("text.lua", "w+")

--write to new file
file:write("-- created by files.lua\n")
file:write("words words words\n")
file:write("more words more words more words\n")

--this will return to the 0 index of the string we added to the file
file:seek("set", 0)

-- read all from the file ie run it.
print(file:read("*a"))

file:close()

--reopen our existing file and append it
file = io.open("text.lua", "a+")
file:write("even more words\n")
file:seek("set", 0)
print(file:read("*a"))
file:close()