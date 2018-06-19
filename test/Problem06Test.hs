module Problem06Test
  ( test
  ) where

import           Problem06  (isPalindrome)
import           Test.HUnit (Test (TestList), (~?=))

test =
  TestList
    [ isPalindrome [1, 2, 3] ~?= False
    , isPalindrome "madamimadam" ~?= True
    , isPalindrome [1, 2, 4, 8, 16, 8, 4, 2, 1] ~?= True
    ]
