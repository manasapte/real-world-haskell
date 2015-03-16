data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromListInverse :: List a -> [a]
fromListInverse (Cons a b) = a : fromListInverse(b)
fromListInverse Nil        = []
