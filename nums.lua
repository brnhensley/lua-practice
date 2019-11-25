-- Common math functions:
-- floor(), ceil(), max(), min(), sin(), cos(), tan(),
-- asin(), acos(), exp(), log(), log10(), pow(), sqrt(),
-- random(), randomseed()

-- Things that don't work:
-- number++
-- number--
-- number += 5
-- number -= 3

-- Relational operators : <, >, <=, >=, ==
-- Not equal to is ~=

-- Logical operators : and, or, not

io.write("6 + 2 = ", 6 + 2, "\n")
io.write("6 - 2 = ", 6 - 2, "\n")
io.write("6 * 2 = ", 6 * 2, "\n")
io.write("6 / 2 = ", 6 / 2, "\n")
io.write("6.5 % 2 ", 6.5 % 2, "\n")
io.write("math.floor(2.34234) = ", math.floor(2.34234), "\n")      --Round down
io.write("math.ceil(2.34234) = ", math.ceil(2.34234), "\n")        --Round up
io.write("math.max(420, 69) = ", math.max(420, 69), "\n")
io.write("math.min(420, 69) = ", math.min(420, 69), "\n")
io.write("math.pow(5, 3) = ", math.pow(5, 3), "\n")                --Raise to a power
io.write("math.sqrt(666) = ", math.sqrt(666), "\n")                --Square root

math.randomseed(os.time())  -- will set a seed for getting a random value, otherwise math.random(10) will always give the same answer.
io.write("math.random() = ", math.random(), "\n")                  --Random number between 0-1
io.write("math.random(10) = ", math.random(10), "\n")              --Random number between 0-10
io.write("math.random(333, 666) = ", math.random(333, 666), "\n")  --Random number between 333-666
