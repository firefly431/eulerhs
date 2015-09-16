say n
    | n == 1000 = "onethousand"
    | n >= 100  = (say (n `div` 100)) ++ ("hundred") ++ (if n `mod` 100 /= 0 then "and" else "") ++ (say (n `mod` 100))
    | n >= 20   = (tens !! (n `div` 10)) ++ (say (n `mod` 10))
    | n >= 10   = teens !! (n - 10)
    | otherwise = ones !! n
    where
        tens  = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
        teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
        ones  = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

main = print . sum . (map $ length . say) $ [1..1000]
