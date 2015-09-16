import Data.List

main = (fmap (map (map read . words) . lines) $ readFile "in_0018.txt" :: (Integral i, Read i) => IO [[i]]) >>= (print . head . foldl1' (\x -> zipWith (+) (zipWith max x (tail x))) . reverse)
