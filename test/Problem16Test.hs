module Problem16Test
  ( test
  ) where

import           Problem16  (dropEvery)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [dropEvery "abcdefghik" 3 ~?= "abdeghk"]
