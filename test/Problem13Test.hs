module Problem13Test
  ( test
  ) where

import           Problem13  (Encoding (Multiple, Single), encodeDirect)
import           Test.HUnit (Test (TestCase, TestList), (~?=))

test =
  TestList
    [ encodeDirect "aaaabccaadeeee" ~?=
      [ Multiple 4 'a'
      , Single 'b'
      , Multiple 2 'c'
      , Multiple 2 'a'
      , Single 'd'
      , Multiple 4 'e'
      ]
    ]
