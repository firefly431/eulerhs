module Primes
( isPrime
, primes
, primesUpTo
, inDivisible
) where

import qualified Util as U

-- |The 'inDivisible' function returns whether an integer seems to be prime
--  It tests divisibility against only integers in the list.
inDivisible :: (Integral n) => [n] -> n -> Bool
inDivisible ps n = not $ any (\i -> U.divisibleBy i n) ps

-- |The 'isPrime'  function returns whether an integer is prime.
--  It uses trial division.
isPrime :: (Integral n) => n -> Bool
isPrime 2 = True
isPrime n
    | even n    = False
    | otherwise = inDivisible [3,5..limit] n
    where limit = U.csqrt n

-- |The 'primes' function produces a list of primes.
-- It is pretty inefficient.
primes :: (Integral n) => [n]
primes = 2 : filter (\n -> (U.csqrt n) ^ 2 /= n && inDivisible (takeWhile (<U.csqrt n) primes) n) [3,5..]

-- |The 'primesUpTo' function produces a list of primes up to an integer.
-- It is pretty inefficient.
primesUpTo :: (Integral n) => n -> [n]
primesUpTo n
    | n < 2 =     []
    | otherwise = 2 : filter isPrime [3,5..n]
