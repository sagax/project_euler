# ruby 1.9.3p551
# ruby 2.5.1p57

summ = 0
for item in 0...1000
  if item % 3 === 0 or item % 5 === 0
    summ += item
  end
end

print summ
