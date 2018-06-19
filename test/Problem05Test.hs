module Problem05Test
  ( test
  ) where

import           Problem05  (myReverse)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [myReverse [1, 2, 3, 4] ~?= [4, 3, 2, 1]]
