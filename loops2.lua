-- this is a table in lua
months = {"Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"}

for i=1,12 do
    print(months[i])
end

-- kind of a forEach loop
-- index can be any variable name
-- The pairs() function iterates over all elements in a table (array)
for index, month in pairs(months) do
    print(month)
end
