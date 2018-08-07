module Problem24
  ( diffSelect
  ) where

import           System.Random (Random, randomRIO)

-- | Lotto: Draw N different random numbers from the set 1..M.
diffSelect :: (Eq a, Num a, Random b, Num b) => a -> b -> IO [b]
diffSelect 0 _ = return []
diffSelect n max = do
  i <- randomRIO (1, max)
  tail <- diffSelect (n -1) max
  return $ i:tail
