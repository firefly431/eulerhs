module Number
( divisibleBy
, csqrt
) where

-- |The 'divisibleBy' function returns whether a number is divisible by another.
divisibleBy :: (Integral a) => a -> a -> Bool
divisibleBy divisor dividend = dividend `mod` divisor == 0

csqrt :: (Integral n) => n -> n
csqrt n = ceiling . sqrt $ (fromIntegral n :: Double)
