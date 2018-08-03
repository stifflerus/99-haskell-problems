module Problem21Test
  ( test
  ) where

import           Problem21  (insertAt)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [insertAt 'X' "abcd" 2 ~?= "aXbcd"]
