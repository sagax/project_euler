summ = 0
(0...1000).each do |i|
  if (i % 3) == 0 || (i % 5) == 0
    summ += i
  end
end
puts summ
