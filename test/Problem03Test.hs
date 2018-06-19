module Problem03Test
  ( test
  ) where

import           Problem03  (elementAt)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [elementAt [1, 2, 3] 2 ~?= 2, elementAt "haskell" 5 ~?= 'e']
