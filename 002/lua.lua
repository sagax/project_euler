--Lua 5.2.0  Copyright (C) 1994-2011 Lua.org, PUC-Rio

summ, a, b, c = 0, 0, 1, 0

while c < 4000000 do
  c = a + b
  a, b = b, c
  if (c % 2 == 0)
    then
      summ = summ + c
    end
end

print (summ)
