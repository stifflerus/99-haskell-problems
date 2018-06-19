module Problem11
  ( encodeModified
  , Encoding(Single, Multiple)
  ) where

import           Problem10 (encode)

data Encoding a
  = Single a
  | Multiple Int
             a
  deriving (Eq, Show)

-- | (*) Modified run-length encoding.
-- Modify the result of problem 10 in such a way that if an element has no
-- duplicates it is simply copied into the result list. Only elements with
-- duplicates are transferred as (N E) lists.
encodeModified :: Eq a => [a] -> [Encoding a]
encodeModified = map f . encode
  where
    f (1, a) = Single a
    f (n, a) = Multiple n a
