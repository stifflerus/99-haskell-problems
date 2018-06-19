module Problem05
  ( myReverse
  ) where

-- | (*) Reverse a list.
myReverse :: [a] -> [a]
myReverse []     = []
myReverse [x]    = [x]
myReverse (x:xs) = myReverse xs ++ [x]
