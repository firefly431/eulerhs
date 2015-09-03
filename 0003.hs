-- TODO: move prime factorization to Number

import qualified Number as N
import qualified Primes as P

largest :: (Integral n) => n -> n
largest n = g n $ P.primesUpTo n
    where
        g :: (Integral n) => n -> [n] -> n
        g 1 _ = 0
        g p [] = p
        g n pt@(p:ps)
            | N.divisibleBy p n = max p $ g (n `div` p) pt
            | otherwise = g n ps

main = print $ largest 600851475143
