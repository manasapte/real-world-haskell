data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList :: List a -> [a]
fromList (Cons a b) = a : fromList(b)
fromList Nil        = []
