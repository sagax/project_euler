fn_sum :: Int -> Int -> Int -> Int -> Int
fn_sum a b limit summ
  | c > limit = summ
  | mod c 2 == 0 = fn_sum b c limit (summ+c)
  | otherwise = fn_sum b c limit summ
  where
    c = a+b

main = do
  print $ fn_sum 0 1 4000000 0
