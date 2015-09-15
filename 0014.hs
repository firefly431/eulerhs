import Data.Function
import Data.List

collatzLength = (!!) (0 : 1 : map collatzLength' [2..])
    where
        next n
            | even n = n `div` 2
            | otherwise = 3 * n + 1
        collatzLength' n
            | n >= 1000000 = (+1) . collatzLength' . next $ n
            | otherwise    = (+1) . collatzLength  . next $ n

main = print . maximumBy (compare `on` collatzLength) $ [1..999999]
