takeWhileRecur :: (a -> Bool) -> [a] -> [a]

takeWhileRecur pred [] = []
takeWhileRecur pred (x:xs)
    | pred x    = x : takeWhileRecur pred xs
    | otherwise =  takeWhileRecur pred xs
