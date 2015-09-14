module Number
( factor
, pfactor
, tau
, sigma
) where

import qualified Util as U
import qualified Primes as P

import Data.List

-- |The 'factor' function returns a list of prime factors.
--  Each factor is repeated the number of times it is divisible
factor :: (Integral n) => n -> [n]
factor n = g n . P.primesUpTo . (+1) $ U.csqrt n
    where
        g :: (Integral n) => n -> [n] -> [n]
        g 1 _ = []
        g p [] = [p]
        g n pt@(p:ps)
            | U.divisibleBy p n = p : g (n `div` p) pt
            | otherwise = g n ps

pfactor :: (Integral n) => n -> [(n, n)]
pfactor = map (\x -> (head x, fromIntegral $ length x)) . group . factor

-- |The 'tau' function returns the number of divisors of a number.
tau :: (Integral n) => n -> n
tau = product . map (+1) . map snd . pfactor

-- |The 'sigma' function returns the sum of divisors of a number.
sigma :: (Integral n) => n -> n
sigma = product . map (\(p, e) -> (p^(e+1) - 1) `div` (p - 1)) . pfactor
