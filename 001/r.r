# R version 3.5.3 (2019-03-11) -- "Great Truth"

summ <- 0
for (item in 1:999) {
  if ((item %% 3 == 0) || (item %% 5 == 0)) {
    summ <- summ + item
  }
}

cat (summ)

