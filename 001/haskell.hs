fn_sum :: Int -> Int -> Int
fn_sum 0 b = b
fn_sum a b
  | mod a 3 == 0 = fn_sum (a - 1) (b + a)
  | mod a 5 == 0 = fn_sum (a - 1) (b + a)
  | otherwise = fn_sum (a - 1) b

main = do
  print $ fn_sum 999 0
