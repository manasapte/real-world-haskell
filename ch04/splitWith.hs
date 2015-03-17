splitWith :: (a -> Bool) -> [a] -> [[a]]

splitWith predicate [] = []
splitWith predicate list =
    inner list
    where
        inner []     = []
        inner (x:xs) = 
            case left of [] -> inner right
                         _  -> left : inner right
            where
                (left, right) = chop (x:xs)
                    where
                        chop []           = ([], [])
                        chop (x:xs) 
                            | predicate x = ([], xs)
                            | otherwise   = (x:left, right)
                                              where (left, right) = chop xs
