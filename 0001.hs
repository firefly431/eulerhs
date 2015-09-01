import qualified Number as N

main = print $ sum [i | i <- [0..999], N.divisibleBy 3 i || N.divisibleBy 5 i]
