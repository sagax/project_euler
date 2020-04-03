# perl 5 (v5.16.0)
# perl 5 (v5.20.1)
# perl 5 (v5.30.1)

$summ = 0;
for ($item = 0; $item < 1000; $item++) {
    if ($item % 3 == 0 || $item % 5 == 0) {
        $summ += $item;
    }
}

print "$summ";
