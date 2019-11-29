-- For this module to work the file name has to be the same as the module,
-- and you have to return the module

local convert = {}      -- the module
function convert.feetToCentimeters(feet)
    return feet * 30.48
end
return convert          -- return to work