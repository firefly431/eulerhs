main = print $ let nums = [1..100] in (sum nums) ^ 2 - (sum $ map (^2) nums)
