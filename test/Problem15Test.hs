module Problem15Test
  ( test
  ) where

import           Problem15  (repli)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [repli "abc" 3 ~?= "aaabbbccc"]
