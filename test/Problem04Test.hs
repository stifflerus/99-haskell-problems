module Problem04Test
  ( test
  ) where

import           Problem04  (myLength)
import           Test.HUnit (Test (TestList), (~?=))

test =
  TestList [myLength [123, 456, 789] ~?= 3, myLength "Hello, world!" ~?= 13]
