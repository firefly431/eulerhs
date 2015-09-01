module Fibonacci
( fibs
, fibc
, fib
) where

-- |The 'fibc' function produces a Fibonacci-characteristic sequences given the first two values.
fibc :: (Num a) => a -> a -> [a]
fibc a b = seq
  where seq = a : b : zipWith (+) seq (tail seq)

-- |The 'fibs' function produces the Fibonacci sequence.
fibs :: (Num a) => [a]
fibs = fibc 0 1

-- TODO: optimize
-- |The 'fib' function returns the nth Fibonacci number.
fib :: (Num a) => Int -> a
fib n = fibs !! n
