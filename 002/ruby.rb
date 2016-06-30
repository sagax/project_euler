# ruby 1.9.3p551 (2014-11-13 revision 48407) [x86_64-linux]
# ruby 1.9.3p551 (2014-11-13 revision 48407) [i686-linux]

summ, a, b, c = 0, 0, 1, 0

while c < 4000000
  c = a + b
  a, b = b, c
  if c % 2 === 0
    summ += c
  end
end

puts summ
