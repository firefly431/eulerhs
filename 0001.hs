import qualified Util as U

main = print $ sum [i | i <- [0..999], U.divisibleBy 3 i || U.divisibleBy 5 i]
