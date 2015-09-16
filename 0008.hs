import Data.Char

main = readFile "in_0008.txt" >>= \num -> print . maximum . map (product . take 13) . takeWhile (\x -> length x >= 13) . iterate tail . map digitToInt . filter isDigit $ num
