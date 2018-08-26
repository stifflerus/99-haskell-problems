module Problem19
  ( rotate
  ) where

import           Data.List (genericDrop, genericLength, genericTake)

-- | (**) Rotate a list N places to the left.
-- Hint: Use the predefined functions length and (++).
rotate :: (Integral b) => [a] -> b -> [a]
rotate xs i =
  genericTake (genericLength xs) $ genericDrop (genericLength xs + i) $ cycle xs
