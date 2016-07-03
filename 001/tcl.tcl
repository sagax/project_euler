# 8.5

set summ 0
for {set item 0} {$item < 1000} {incr item} {
  if {[expr $item % 3] == 0 || [expr $item % 5] == 0} {
    incr summ $item
  }
}

puts $summ

