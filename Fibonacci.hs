module Fibonacci
( fibs
, fibc
, fib
) where

fibc :: (Num a) -> a -> a -> [a]
fibc a b = seq
  where seq = a : b : zipWith (+) seq (tail seq)

fibs :: (Num a) => [a]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- TODO: optimize
fib :: (Num a) => Int -> a
fib n = fibs !! n
