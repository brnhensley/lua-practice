co1 = coroutine.create(function()
    for i = 1, 10 do
        print(i, coroutine.status(co1))
        if i == 5 then
            coroutine.yield()
        end
    end
end)

--coroutines start off suspended and need to be started
print(coroutine.status(co1))

-- start the coroutine
coroutine.resume(co1)
print(coroutine.status(co1))

co2 = coroutine.create(function()
    for i = 91, 95 do
        print(i)
    end
end)

coroutine.resume(co2)

-- resuming the coroutine after it was yeilded will let it finish
coroutine.resume(co1)
-- when finished it's status will be dead
print(coroutine.status(co1))

-- can't restart it with resume once it's dead
coroutine.resume(co1)
print(coroutine.status(co1))