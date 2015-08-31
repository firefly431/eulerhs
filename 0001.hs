main = print $ sum [i | i <- [0..999], i `mod` 3 == 0 || i `mod` 5 == 0]
