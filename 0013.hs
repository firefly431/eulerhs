main = readFile "in_0013.txt" >>= (putStrLn . take 10 . show . sum . map read . lines)
