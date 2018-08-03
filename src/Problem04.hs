module Problem04
  ( myLength
  ) where

-- | (*) Find the number of elements of a list.
myLength :: Num b => [a] -> b
myLength [] = 0
myLength x  = 1 + myLength (tail x)
