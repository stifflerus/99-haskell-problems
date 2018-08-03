module Problem21
  ( insertAt
  ) where

-- | Insert an element at a given position into a list.
insertAt :: (Num b, Eq b) => a -> [a] -> b -> [a]
insertAt a xs 1     = a:xs
insertAt a (x:xs) n = x:insertAt a xs (n-1)
