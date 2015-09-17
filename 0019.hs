notleap = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
leap    = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

-- starting from 1901
monthdays = concat . cycle $ [notleap, notleap, notleap, leap]

-- Jan 1, 1901 was a Tuesday

main = print . length . filter (==0) . scanl (\a b -> (a + b) `mod` 7) 2 . take 1200 $ monthdays
