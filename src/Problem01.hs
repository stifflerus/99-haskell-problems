module Problem01
  ( myLast
  ) where

-- | (*) Find the last element of a list.
myLast :: [a] -> a
myLast [x]    = x
myLast (_:xs) = myLast xs
