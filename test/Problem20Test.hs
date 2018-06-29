module Problem20Test
  ( test
  ) where

import           Problem20  (removeAt)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [removeAt 2 "abcd" ~?= ('b', "acd")]
