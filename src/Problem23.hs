module Problem23
  ( rndSelect
  ) where

import           System.Random (randomRIO)

-- | Extract a given number of randomly selected elements from a list.
rndSelect :: (Num b, Eq b) => [a] -> b -> IO [a]
rndSelect _ 0 = return []
rndSelect xs n = do
  i <- randomRIO (0, length xs - 1)
  is <- rndSelect xs (n - 1)
  return $ (xs !! i) : is

