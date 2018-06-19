module Problem14
  ( dupli
  ) where

-- | (*) Duplicate the elements of a list.
dupli :: [a] -> [a]
dupli []     = []
dupli [x]    = [x, x]
dupli (x:xs) = x : x : dupli xs
