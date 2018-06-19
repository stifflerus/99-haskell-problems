{-# LANGUAGE UnicodeSyntax #-}

module Problem03
  ( elementAt
  , test
  ) where

-- (*) Find the K'th element of a list.
-- The first element in the list is number 1.
import Test.HUnit (Test (TestList), (~?=))

elementAt ∷ [a] → Int → a
elementAt a 1 = head a
elementAt a i = elementAt (tail a) (i - 1)

test = TestList [elementAt [1, 2, 3] 2 ~?= 2, elementAt "haskell" 5 ~?= 'e']
