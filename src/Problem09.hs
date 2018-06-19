module Problem09
  ( pack
  ) where

-- | (**) Pack consecutive duplicates of list elements into sublists.
-- If a list contains repeated elements they should be placed in separate
-- sublists.
pack :: Eq a => [a] -> [[a]]
pack []  = []
pack [x] = [[x]]
pack x   = takeWhile (== head x) x : pack (dropWhile (== head x) x)
