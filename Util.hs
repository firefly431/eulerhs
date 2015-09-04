-- Numerical utilities

module Util
( divisibleBy
, csqrt
) where

-- |The 'divisibleBy' function returns whether a number is divisible by another.
divisibleBy :: (Integral a) => a -> a -> Bool
divisibleBy divisor dividend = dividend `mod` divisor == 0

-- |The 'csqrt' function returns the ceiling of the square root of an integer.
csqrt :: (Integral n) => n -> n
csqrt n = ceiling . sqrt $ (fromIntegral n :: Double)
