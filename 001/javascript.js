// node v0.10.32

var summ = 0
for (item = 0; item < 1000; item++) {
  if (item % 3 === 0 || item % 5 === 0) {
    summ += item
  }
}
console.log(summ)
