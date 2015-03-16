data Tree a = Node a (Maybe (Tree a)) (Maybe (Tree a))
              deriving (Show)

t = Just(Node 3 (Just(Node 2 (Nothing) (Nothing))) (Nothing))
