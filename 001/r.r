# R scripting front-end version 3.2.1 (2015-06-18)
# R scripting           version 3.2.5 Patched (2016-04-18 r70566)

summ <- 0
for (item in 1:999) {
  if ((item %% 3 == 0) || (item %% 5 == 0)) {
    summ <- summ + item
  }
}

cat (summ)

