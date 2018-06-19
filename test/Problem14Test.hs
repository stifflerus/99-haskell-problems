module Problem14Test
  ( test
  ) where

import           Problem14  (dupli)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [dupli [1, 2, 3] ~?= [1, 1, 2, 2, 3, 3]]
