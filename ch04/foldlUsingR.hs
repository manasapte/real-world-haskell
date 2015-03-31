myFoldl :: (b -> a -> b) -> b -> [a] -> b

myFoldl f z list =
    innerFn z 
    where
        innerFn =
            foldr g id list
            where
                g elem acc = acc . ((flip f) elem)
        
