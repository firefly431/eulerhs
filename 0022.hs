import Data.Char
import Data.List

split :: String -> [String]
split s = read $ "[" ++ s ++ "]"

main = readFile "in_0022.txt" >>= print . sum . zipWith (*) [1..] . map sum . map (map ((subtract 64) . fromIntegral . ord)) . sort . split
