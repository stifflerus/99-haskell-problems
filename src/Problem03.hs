module Problem03
  ( elementAt
  ) where

-- | (*) Find the K'th element of a list.
-- The first element in the list is number 1.
elementAt :: (Eq b, Num b) => [a] -> b -> a
elementAt a 1 = head a
elementAt a i = elementAt (tail a) (i - 1)
