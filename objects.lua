-- Lua is not object oriented, but it can be faked with tables

Animal = {
    height = 0,
    weight = 0,
    name = "none",
    sound = "none"
}

function Animal:new(height, weight, name, sound)
    setmetatable({}, Animal)

    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound

    return self
end

function Animal:getProps()
    animalProps = string.format("%s weights %.1f lbs, is %.1f ft tall, and says '%s'.", self.name, self.weight, self.height, self.sound)
    return animalProps
end

nag = Animal:new(235, 70, "Nag", "Did you call your mother?")

print(nag.name)
print(nag:getProps())

-- Inheretance

Cat = Animal:new() --contains all methods and props from Animal

--then you can overwrite them
function Cat:new(height, weight, name, sound, food)
    setmetatable({}, Cat)

    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound
    self.food = food

    return self
end

function Cat:getProps()
    catProps = string.format("%s weights %.1f lbs, is %.1f ft tall, says '%s', and love to eat %s.", self.name, self.weight, self.height, self.sound, self.food)
    return catProps
end

kitty = Cat:new(11, 34, "Floofers", "Epstein didn't kill himself", "Bagel Bites")
print(kitty:getProps())