module Problem10Test
  ( test
  ) where

import           Problem10  (encode)
import           Test.HUnit (Test (TestList), (~?=))

test =
  TestList
    [ encode "aaaabccaadeeee" ~?=
      [(4, 'a'), (1, 'b'), (2, 'c'), (2, 'a'), (1, 'd'), (4, 'e')]
    ]
