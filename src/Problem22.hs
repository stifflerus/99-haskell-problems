module Problem22
  ( range
  ) where

-- | Create a list containing all integers within a given range.
range :: (Num a, Enum a) => a -> a -> [a]
range a b = [a .. b]
