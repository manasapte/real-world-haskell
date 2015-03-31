takeWhileFold :: (a -> Bool) -> [a] -> [a]

takeWhileFold pred list =
    foldr select [] list
    where
        select elem acc
            | pred elem = elem : acc
            | otherwise = acc
