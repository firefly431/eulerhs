module Number
( factor
) where

import qualified Util as U
import qualified Primes as P

-- |The 'factor' function returns a list of prime factors.
--  Each factor is repeated the number of times it is divisible
factor :: (Integral n) => n -> [n]
factor n = g n . P.primesUpTo $ U.csqrt n
    where
        g :: (Integral n) => n -> [n] -> [n]
        g 1 _ = []
        g p [] = [p]
        g n pt@(p:ps)
            | U.divisibleBy p n = p : g (n `div` p) pt
            | otherwise = g n ps
