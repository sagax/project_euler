# perl 5, version 16, subversion 0 (v5.16.0) built for x86_64-linux-thread-multi
# perl 5, version 20, subversion 1 (v5.20.1) built for i586-linux-thread-multi

$summ = 0;
for ($item = 0; $item < 1000; $item++) {
    if ($item % 3 == 0 || $item % 5 == 0) {
        $summ += $item;
    }
}

print "$summ";

