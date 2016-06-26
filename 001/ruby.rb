# ruby 1.9.3p551 (2014-11-13 revision 48407) [x86_64-linux]

summ = 0
for item in 0...1000
  if item % 3 === 0 or item % 5 === 0
    summ += item
  end
end
puts summ
