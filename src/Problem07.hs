{-# LANGUAGE UnicodeSyntax #-}

module Problem07
  ( myFlatten
  , NestedList(Elem, List)
  , test
  ) where

-- (**) Flatten a nested list structure.
-- Transform a list, possibly holding lists as elements into a `flat' list by
-- replacing each list with its elements (recursively).
import Test.HUnit (Test (TestList), (~?=))

data NestedList a
  = Elem a
  | List [NestedList a]

myFlatten ∷ NestedList a → [a]
myFlatten (Elem a) = [a]
myFlatten (List a) = concatMap myFlatten a

test =
  TestList
    [ myFlatten (Elem 5) ~?= [5]
    , myFlatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) ~?=
      [1, 2, 3, 4, 5]
    , myFlatten (List []) ~?= ([] :: String)
    ]
