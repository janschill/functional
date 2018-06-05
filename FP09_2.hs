module FP09_2 where

import FP09_1
import FP08

btree11 = Node (Node Empty 2 Empty) 1 (Node Empty 3 Empty)
btree12 = Node (Node Empty 5 Empty) 4 (Node Empty 6 Empty)
tree11 = Node' 1 [Node' 2 [], Node' 3 [], Node' 5 []]
tree12 = Node' 2 [Node' 3 [], Node' 4 [], Node' 6 []]

instance (Num a) => Num (BinaryTree a) where
  (+) Empty Empty = Empty
  (+) btree Empty = btree
  (+) Empty btree = btree
  (+) (Node l1 v1 r1) (Node l2 v2 r2) = Node (l1 + l2) (v1 + v2) (r1 + r2)

instance (Num a) => Num (Tree a) where
  (+) Empty' Empty' = Empty'
  (+) tree Empty' = tree
  (+) Empty' tree = tree
  (+) (Node' v1 tts1) (Node' v2 tts2) = Node' (v1+v2) (sum tts1 tts2)
    where
      sum [] [] = []
      sum trees [] = trees
      sum [] trees = trees
      sum (t1:ts1) (t2:ts2) = (t1 + t2) : (sum ts1 ts2)




-- instance (Show a) => Show (Tree a) where
--   show Empty' = "Leer"
--   show (Node' v (tts)) = show v : "--" : show' tts
--                         where
--                           show'::[Tree a]->String
--                           show' [] = ""
--                           show' (t:ts) = show t ++ show' ts
