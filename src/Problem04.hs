module Problem04
  ( myLength
  ) where

-- | (*) Find the number of elements of a list.
myLength :: [a] -> Int
myLength [] = 0
myLength x  = 1 + myLength (tail x)
