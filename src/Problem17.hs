module Problem17
  ( split
  ) where

import           Data.List (genericDrop, genericTake)

-- | (*) Split a list into two parts; the length of the first part is given.
-- Do not use any predefined predicates.
split :: (Integral b) => [a] -> b -> ([a], [a])
split xs n = (genericTake n xs, genericDrop n xs)
