module Problem07Test
  ( test
  ) where

import           Problem07  (NestedList (Elem, List), myFlatten)
import           Test.HUnit (Test (TestList), (~?=))

test =
  TestList
    [ myFlatten (Elem 5) ~?= [5]
    , myFlatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) ~?=
      [1, 2, 3, 4, 5]
    , myFlatten (List []) ~?= ([] :: String)
    ]
