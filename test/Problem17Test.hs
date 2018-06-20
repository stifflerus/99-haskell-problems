module Problem17Test
  ( test
  ) where

import           Problem17  (split)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [split "abcdefghik" 3 ~?= ("abc", "defghik")]
