module Problem18Test
  ( test
  ) where

import           Problem18  (slice)
import           Test.HUnit (Test (TestList), (~?=))

test =
  TestList
    [slice ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'k'] 3 7 ~?= "cdefg"]
