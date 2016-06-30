# R scripting front-end version 3.2.1 (2015-06-18)
# R scripting           version 3.2.5 Patched (2016-04-18 r70566)

summ <- 0
a <- 0
b <- 1
c <- 0

while (c < 4000000) {
  c <- a + b
  a <- b
  b <- c
  if (c %% 2 == 0) {
    summ <- summ + c
  }
}

cat (summ)
