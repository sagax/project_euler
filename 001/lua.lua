--Lua 5.2.0  Copyright (C) 1994-2011 Lua.org, PUC-Rio
--Lua 5.2.3  Copyright (C) 1994-2013 Lua.org, PUC-Rio

summ = 0
for item = 0, 999 do
  if (item % 3 == 0 or item % 5 == 0)
    then
      summ = summ + item
    end
  end

print (summ)

