mydrop n xs | n <=0 = xs
mydrop _ []         = []
mydrop n (_:xs)     = mydrop (n-1) xs
