module Problem22Test
  ( test
  ) where

import           Problem22  (range)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [range 4 9 ~?= [4, 5, 6, 7, 8, 9]]
