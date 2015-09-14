import qualified Number as N

tau_tri n = (n * (n + 1) `div` 2, a * b) : ((n * (n + 1) `div` 2) + 1, b * c) : tau_tri (n + 2)
    where
        a = N.tau n
        b = N.tau ((n + 1) `div` 2)
        c = N.tau (n + 2)

main = print . fst . head . filter ((>500) . snd) $ tau_tri 1
