module Problem26 
  ( combinations
  ) where

combinations :: Int -> [a] -> [[a]]
combinations _ []     = []
combinations 0 _      = []
combinations 1 xs     = pure <$> xs
combinations n (x:xs) = pList ++ recurse n
  where
    pList = (x:) <$> recurse (n - 1)
    recurse n = combinations n xs
