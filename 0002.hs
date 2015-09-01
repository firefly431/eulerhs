import qualified Fibonacci as F
import qualified Number as N

main = print . sum $ filter (N.divisibleBy 2) $ takeWhile (<4000000) F.fibs
