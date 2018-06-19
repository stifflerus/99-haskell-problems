module Problem11Test
  ( test
  ) where

import           Problem11  (Encoding (Multiple, Single), encodeModified)
import           Test.HUnit (Test (TestList), (~?=))

test =
  TestList
    [ encodeModified "aaaabccaadeeee" ~?=
      [ Multiple 4 'a'
      , Single 'b'
      , Multiple 2 'c'
      , Multiple 2 'a'
      , Single 'd'
      , Multiple 4 'e'
      ]
    ]
