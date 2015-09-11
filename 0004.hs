main = print . maximum $ filter (\x -> let s = show x in s == reverse s) [a * b | a <- [100..999], b <- [100..a]]
