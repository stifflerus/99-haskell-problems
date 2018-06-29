module Problem19Test
  ( test
  ) where

import           Problem19  (rotate)
import           Test.HUnit (Test (TestList), (~?=))

test =
  TestList
    [ rotate ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'] 3 ~?= "defghabc"
    , rotate ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'] (-2) ~?= "ghabcdef"
    ]
