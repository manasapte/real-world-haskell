import Data.List
sortByListLength :: [[a]] -> [[a]]

sortByListLength l 
    = sortBy comparator l
      where
          comparator l1 l2 
              | length(l1) < length(l2) = LT
              | length(l1) > length(l2) = GT
              | otherwise               = EQ
