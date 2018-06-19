module Problem12Test
  ( test
  ) where

import           Problem12  (Encoding (Multiple, Single), decodeModified)
import           Test.HUnit (Test (TestList), (~?=))

test =
  TestList
    [ decodeModified
        [ Multiple 4 'a'
        , Single 'b'
        , Multiple 2 'c'
        , Multiple 2 'a'
        , Single 'd'
        , Multiple 4 'e'
        ] ~?=
      "aaaabccaadeeee"
    ]
