module Number
( divisibleBy
) where

-- |The 'divisibleBy' function returns whether a number is divisible by another.
divisibleBy :: (Integral a) => a -> a -> Bool
divisibleBy divisor dividend = dividend `mod` divisor == 0
