module Problem01Test
  ( test
  ) where

import           Problem01  (myLast)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [myLast [1, 2, 3, 4] ~?= 4, myLast ['x', 'y', 'z'] ~?= 'z']
