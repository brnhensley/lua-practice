quote = [[The car's on fire and there's no driver at the wheel
    and the sewers are all muddied with a thousand lonely suicides
    and a dark wind blows

    The government is corrupt
    and we're on so many drugs
    with the radio on and the curtains drawn

    We're trapped in the belly of this horrible machine
    and the machine is bleeding to death

    The sun has fallen down
    and the billboards are all leering
    and the flags are all dead at the top of their poles

    It went like this:

    The buildings tumbled in on themselves
    mothers clutching babies picked through the rubble
    and pulled out their hair

    The skyline was beautiful on fire
    all twisted metal stretching upwards
    everything washed in a thin orange haze

    I said: "kiss me, you're beautiful -
    these are truly the last days"

    You grabbed my hand and we fell into it
    like a daydream or a fever

    We woke up one morning and fell a little further down -
    for sure it's the valley of death

    I open up my wallet
    and it's full of blood
]]
-- find int length of quote string
-- string.len(quote) == #quote
io.write("string length is ", #quote, "\n")
io.write("string length is ", string.len(quote), "\n")

-- replace in string, doesn't change original string
newQuote = string.gsub(quote, "I ", "They ")
io.write(newQuote, "\n")

-- find index of
foundIndex = string.find(quote, "The car's on fire and there's no driver at the wheel") --index of first word
io.write(foundIndex, "\n")

-- To Upper & Lower case
-- io.write(string.upper(quote), "\n")
-- io.write(string.lower(quote), "\n")