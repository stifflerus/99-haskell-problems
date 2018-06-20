module Problem17
  ( split
  ) where

-- | (*) Split a list into two parts; the length of the first part is given.
-- Do not use any predefined predicates.
split :: [a] -> Int -> ([a], [a])
split xs n = (take n xs, drop n xs)
