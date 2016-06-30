# perl 5, version 16, subversion 0 (v5.16.0) built for x86_64-linux-thread-multi

$summ = 0;
$a = 0;
$b = 1;
$c = 0;

while ($c < 4000000) {
    $c = $a + $b;
    $a = $b;
    $b = $c;
    if ($c % 2 == 0) {
        $summ += $c;
    }
}

print "$summ";
