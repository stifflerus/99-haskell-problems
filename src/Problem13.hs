module Problem13
  ( encodeDirect
  , Encoding(Single, Multiple)
  ) where

import           Data.List (group)
import           Problem11 (Encoding (Multiple, Single))

-- | (**) Run-length encoding of a list (direct solution). Implement the
-- so-called run-length encoding data compression method directly. I.e. don't
-- explicitly create the sublists containing the duplicates, as in problem 9,
-- but only count them. As in problem P11, simplify the result list by replacing
-- the singleton lists (1 X) by X.
encodeDirect :: Eq a => [a] -> [Encoding a]
encodeDirect = map encode . group
  where
    encode n =
      if length n == 1
        then Single (head n)
        else Multiple (length n) (head n)
