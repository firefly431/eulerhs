import qualified Fibonacci as F

main = print . sum $ filter even $ takeWhile (<4000000) F.fibs
