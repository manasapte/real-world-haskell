import Data.Char (digitToInt)

asIntFold [] = 0
asIntFold [x] = digitToInt x
asIntFold (x:xs)
    | x == '-'  = (-1) * foldl appendChar 0 xs
    | otherwise =  
        foldl appendChar 0 (x:xs)
    where
        appendChar acc c = acc * 10 + digitToInt c

