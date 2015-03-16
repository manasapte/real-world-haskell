data Tree a = Node a (Tree a) (Tree a)
              | Empty

treeHeight :: Tree a -> Int

treeHeight Empty = 0
treeHeight (Node _ leftSubtree rightSubtree)
    = 1 + max (treeHeight leftSubtree) (treeHeight rightSubtree)
        where
            max a b 
                | a > b     = a
                | otherwise = b
