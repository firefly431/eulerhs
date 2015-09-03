module Primes
( isPrime
, primes
, primesUpTo
) where

import qualified Number as N

-- |The 'isPrime'  function returns whether an integer is prime.
--  It uses trial division.
isPrime :: (Integral n) => n -> Bool
isPrime 2 = True
isPrime n
    | even n    = False
    | otherwise = not $ any (\i -> N.divisibleBy i n) [3,5..limit]
    where limit = ceiling . sqrt $ (fromIntegral n :: Double)

-- |The 'primes' function produces a list of primes.
-- It is pretty inefficient.
primes :: (Integral n) => [n]
primes = 2 : filter isPrime [3,5..]

-- |The 'primesUpTo' function produces a list of primes up to an integer.
-- It is pretty inefficient.
primesUpTo :: (Integral n) => n -> [n]
primesUpTo n
    | n < 2 =     []
    | otherwise = 2 : filter isPrime [3,5..n]
