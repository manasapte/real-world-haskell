concatFoldr [] = []
concatFoldr (x:xs) =
    foldr appendList [] (x:xs)
    where
        appendList [] acc     = acc
        appendList (y:ys) acc = y : appendList ys acc
