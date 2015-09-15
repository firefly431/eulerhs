import Data.Function

grid = iterate (scanl1 (+)) (repeat 1)

main = print $ grid !! 20 !! 20
