notleap = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
leap    = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

-- starting from 1901
monthdays = concat $ (replicate 3 notleap ++ (leap : replicate 3 notleap))
