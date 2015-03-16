intersperse :: (Eq a) => a -> [[a]] -> [a] 

intersperse sentinel xs =
    inner [] xs
    where
        inner [] []        = []
        inner [] [l]       = l
        inner [] (x:xs)
            | x == []      = sentinel : inner [] xs
            | otherwise    = inner x xs
        inner [c] (x:xs)   = c : sentinel : inner x xs
        inner (y:ys) rest  = y : (inner ys rest)

