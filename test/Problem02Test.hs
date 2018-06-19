module Problem02Test
  ( test
  ) where

import           Problem02  (myButLast)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [myButLast [1, 2, 3, 4] ~?= 3, myButLast ['a' .. 'z'] ~?= 'y']
