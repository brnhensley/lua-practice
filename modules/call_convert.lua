-- import convert.lua, needs to be in the same directory
convertModule = require("convert")

print(string.format("%.3f cm", convertModule.feetToCentimeters(5)))
print(string.format("%.3f cm", convertModule.feetToCentimeters(666)))
print(string.format("%.3f cm", convertModule.feetToCentimeters(3.1415926)))