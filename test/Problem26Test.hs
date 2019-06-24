module Problem26Test
  ( test
  ) where

import           Problem26  (combinations)
import           Test.HUnit (Test (TestList), (~?=))

test =
  TestList
    [ length (combinations 3 "abcediwnfjdi") ~?= 220 ]
