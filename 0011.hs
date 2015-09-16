import Data.Array
import Data.Maybe
import Control.Monad

data Direction = East | Southeast | South | Southwest
    deriving (Eq, Bounded, Enum)

move :: (Integral i) => (i, i) -> Direction -> (i, i)
move (y, x) East = (y, x + 1)
move (y, x) Southeast = (y + 1, x + 1)
move (y, x) South = (y + 1, x)
move (y, x) Southwest = (y + 1, x - 1)

traverseGrid :: (Integral i, Read i, Ix i) => Array (i, i) e -> i -> (i, i) -> [[e]]
traverseGrid grid range pt = foldr (++) [] $ map (maybeToList . follow grid range pt) [minBound..maxBound]
    where
        follow :: (Integral i, Ix i) => Array (i, i) e -> i -> (i, i) -> Direction -> Maybe [e]
        follow _    0     _  _   = Just []
        follow grid range pt dir = do
            guard $ inRange (bounds grid) pt
            next <- follow grid (range - 1) (move pt dir) dir
            return $ (grid ! pt) : next

main = do
    ugrid <- fmap (map (map read . words) . lines) $ readFile "in_0011.txt" :: (Integral i, Read i, Ix i) => IO [[i]]
    let agrid = array ((0, 0), ((subtract 1) . length $ ugrid, (subtract 1) . length $ head ugrid) :: (Int, Int)) [((y, x), v) | (y, l) <- zip [0..] ugrid, (x, v) <- zip [0..] l]
    print . maximum . map product $ (range . bounds $ agrid) >>= (traverseGrid agrid 4)
