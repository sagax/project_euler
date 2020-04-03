// node v0.10.32
// node v0.12.6
// node v7.2.1
// node v9.9.0

var summ = 0;
for (item = 0; item < 1000; item++) {
  if (item % 3 === 0 || item % 5 === 0) {
    summ += item;
  }
}

process.stdout.write("" + summ);
