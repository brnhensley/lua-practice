-- How to pass an unknown number of arguements (parameters)
function addAll(...)
    local sum = 0

    -- This will look through ever parameter and add them all
    for key, value in pairs{...} do
        -- this is neccessary because it's getting a table not multiple values
        for num in string.gmatch(value, "[^%s]+") do
            num = tonumber(num)
            io.write(sum, " + ", num, "\n")
            sum = sum + num
        end
    end
    return sum
end


io.write("Total = ",
    addAll(math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999)
    ),
    "\n"
)

io.write("Total = ",
    addAll(math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999),
        math.random(0, 999)
        ),
    "\n"
)

io.write("Total = ",
    addAll(math.random(0, 999),
        math.random(0, 999)
        ),
    "\n"
)

-- create a random length table of random numbers
math.randomseed(os.time())
nums = {}
randomNum = math.random(2, 99)

-- start at 1, end at randomNum
for i = 1, randomNum do
    nums[i] = math.random(0, 999)
end
numberString = table.concat(nums, " ")
print(numberString)

io.write("Total = ", addAll(numberString), "\n")