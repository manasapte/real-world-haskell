length' :: [a] -> Int
length' list = helper 0 list
               where helper count [] = count
                     helper count (x:xs) = helper (count + 1) xs
