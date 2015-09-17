import Number

d x = sigma x - x
nums = [2..9999]
div1 = map d $ nums
divs = map d $ div1

amicable = map fst . filter snd . zip nums . zipWith (==) nums $ divs
perfect  = map fst . filter snd . zip nums . zipWith (==) nums $ div1
main = print $ sum amicable - sum perfect
