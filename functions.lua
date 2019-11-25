function randomCalc(func)
    print(func)
    if func == "add" then
        print(string.format("%s + %s = %s", num1, num2, add(num1, num2)))
    elseif func == "subtract" then
        print(string.format("%s - %s = %s", num1, num2, subtract(num1, num2)))
    elseif func == "multiply" then
        print(string.format("%s * %s = %s", num1, num2, multiply(num1, num2)))
    elseif func == "divide" then
        print(string.format("%s / %s = %s", num1, num2, divide(num1, num2)))
    end
end

function add(num1, num2)
    return num1 + num2
end

function subtract(num1, num2)
    return num1 - num2
end

function multiply(num1, num2)
    return num1 * num2
end

function divide(num1, num2)
    return num1 / num2
end

math.randomseed(os.time())
calculations = { "add", "subtract", "multiply", "divide" }
num1 = math.random(0, 99999)
num2 = math.random(0, 99999)

randomCalc(calculations[math.random(1, 4)])