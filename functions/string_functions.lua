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

function split_string(inputString)
    stringTable = {}

    local i = 1

    -- this will split a string into a table of words
    for word in string.gmatch(inputString, "[^%s]+") do   --RegEx to find a space after characters,
        stringTable[i] = word
        i = i + 1
    end

    return stringTable, i - 1
    -- return multiple values with a comma
    -- i - 1 because i will alwats be 1 higher than word count
end

-- assign multiple values in one line that associate with the multiple returns of the function
wordTable, wordCount = split_string(quote)

print(string.format("Total word cound : %d", wordCount))
for j=1, wordCount do
    print(string.format("%03d : %s", j, wordTable[j]))
end