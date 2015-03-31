groupByFold p [] = []
groupByFold p (e:es) =
    lolacc ([lacc []])
    where
        (_, lacc, lolacc) = 
            foldl classify (e, (e:), id) es
            where
                classify (x, lbuilder, lolbuilder) elem
                    | p x elem  = (x, lbuilder . (elem:), lolbuilder) 
                    | otherwise = (elem, (elem:), lolbuilder . ((lbuilder []):))
