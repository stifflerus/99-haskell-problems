module Problem18
  ( slice
  ) where

import           Data.List (genericDrop, genericTake)

-- (**) Extract a slice from a list. Given two indices, i and k, the slice is
-- the list containing the elements between the i'th and k'th element of the
-- original list (both limits included). Start counting the elements with 1.
slice :: (Integral b, Integral c) => [a] -> b -> c -> [a]
slice xs n m = genericDrop (n - 1) $ genericTake m xs
