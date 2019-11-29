-- functions can be saved to variable names
doubleNum = function(x) return x * 2 end
print(doubleNum(333))

function outerFunc()
    local i = 0

    -- Closure function, this will save the variable changes made inside of the funtion
    return function()
        i = i + 1
        return i
    end
end

getI = outerFunc()

-- this will return a different number every time because the closure function saves the variables changed within it
print(getI(), getI(), getI(), getI(), getI(), getI(), getI())