# 8.5

set summ 0
set a 0
set b 1
set c 0

while {$c < 4000000} {
  set c [expr $a + $b]
  set a $b
  set b $c
  if {[expr $c % 2] == 0} {
    incr summ $c
  }
}

puts $summ
