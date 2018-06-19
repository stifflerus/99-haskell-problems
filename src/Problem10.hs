{-# LANGUAGE UnicodeSyntax #-}

module Problem10
  ( encode
  , test
  ) where

-- (*) Run-length encoding of a list. Use the result of problem P09 to
-- implement the so-called run-length encoding data compression method.
-- Consecutive duplicates of elements are encoded as lists (N E) where N is
-- the number of duplicates of the element E.
import Control.Arrow ((&&&))
import Problem09     (pack)
import Test.HUnit    (Test (TestList), (~?=))

encode ∷ Eq a ⇒ [a] → [(Int, a)]
encode = map (length &&& head) . pack

test =
  TestList
    [ encode "aaaabccaadeeee" ~?=
      [(4, 'a'), (1, 'b'), (2, 'c'), (2, 'a'), (1, 'd'), (4, 'e')]
    ]
