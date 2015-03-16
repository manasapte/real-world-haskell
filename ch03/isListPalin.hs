isListPalin :: (Eq a) => [a] -> Bool

isListPalin xs = inner xs xcount [] 0
                 where
                     xcount                   = length(xs)
                     inner [] _ [] _          = True
                     inner [] _ _ _           = False 
                     inner (x:xs) xcount rxs rxcount
                         | xcount > rxcount  = inner xs (xcount-1) (x:rxs) (rxcount+1) 
                         | xcount < rxcount  = False
                         | xcount == rxcount = inner' (x:xs) rxs
                                               where
                                                   inner' (a:as) (b:bs)
                                                       | a == b    = inner' as bs
                                                   inner' [] [] = True
                                                   inner' _ _   = False
