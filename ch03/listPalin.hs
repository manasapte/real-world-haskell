listPalin :: [a] -> [a]

listPalin xs = inner [] xs
               where inner acc [] = acc
                     inner acc (x:xs) = x:(inner (x:acc) xs)
