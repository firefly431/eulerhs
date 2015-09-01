main = print . maximum $ filter (\x -> let s = show x in s == reverse s) [a * b | a <- [1..999], b <- [1..a - 1]]
