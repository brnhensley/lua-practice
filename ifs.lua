-- Relational operators : <, >, <=, >=, ==
-- Not equal to is ~=

math.randomseed(os.time())
age = math.random(100)

print(age)
if (age == 666) then
    io.write("HAIL SATAN!", "\n")
elseif (age == 420) then
    io.write("Strong like Li-on!!", "\n")
elseif (age >= 50) and (age <= 70) then
    io.write("OK Boomer", "\n")
elseif (age < 5) or (age > 80) then
    io.write("Go away, you baby", "\n")
elseif (age >= 5) and (age < 16) then
    io.write("Go to school, you baby", "\n")
elseif (age >= 16) and (age < 18) then
    io.write("Go drive a car, you bigger baby", "\n")
elseif (age > 18) and (age < 50) then
    io.write("Go vote I guess, you baby.", "\n")
end

-- canVote = age >= 18 ? true : false
-- lua turnery operator
canVote = age >= 18 and "Yes" or "No"
print(string.format("Can I vote? %s.", canVote))