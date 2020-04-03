--Lua 5.2.0
--Lua 5.2.3
--Lua 5.3.5

summ = 0
for item = 0, 999 do
  if (item % 3 == 0 or item % 5 == 0)
    then
      summ = summ + item
    end
  end

io.write(summ)
