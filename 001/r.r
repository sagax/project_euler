# R version 3.5.3
# R version 3.6.1

summ <- 0
for (item in 1:999) {
  if ((item %% 3 == 0) || (item %% 5 == 0)) {
    summ <- summ + item
  }
}

cat (summ)
