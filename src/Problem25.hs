module Problem25
  ( randomPermutation
  ) where

import           Problem20     (removeAt)
import           System.Random (Random, randomRIO)

randomPermutation :: [a] -> IO [a]
randomPermutation [] = return []
randomPermutation [x] = return [x]
randomPermutation xs = do
  i <- randomRIO (1, length xs)
  let (head, tail) = removeAt i xs
  tailPermutation <- randomPermutation tail
  return $ head : tailPermutation
