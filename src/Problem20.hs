module Problem20 (removeAt) where

-- | (*) Remove the K'th element from a list.
removeAt :: Int -> [a] -> (a, [a])
removeAt 1 (x:xs) = (x, xs) 
removeAt n (x:xs) = (fst next, x:(snd next))
  where next = removeAt (n - 1) xs
