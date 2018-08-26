module Problem15
  ( repli
  ) where

import           Data.List (genericReplicate)

-- | (**) Replicate the elements of a list a given number of times.
repli :: (Integral b) => [a] -> b -> [a]
repli a i = concatMap (genericReplicate i) a
