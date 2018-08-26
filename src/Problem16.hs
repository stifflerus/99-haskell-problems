module Problem16
  ( dropEvery
  ) where

import           Data.List (genericDrop, genericTake)

-- | (**) Drop every N'th element from a list.
dropEvery :: (Integral b) => [a] -> b -> [a]
dropEvery [] _ = []
dropEvery xs n = genericTake (n - 1) xs ++ dropEvery (genericDrop n xs) n
