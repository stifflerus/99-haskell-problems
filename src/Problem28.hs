module Problem28
  ( lsort
  , lfsort
  ) where

import Data.List (sortOn)

lsort :: [[a]] -> [[a]]
lsort = sortOn length

lfsort :: [[a]] -> [[a]]
lfsort xs = sortOn (\x -> length $ filter (\p -> length p == length x) xs) xs 

