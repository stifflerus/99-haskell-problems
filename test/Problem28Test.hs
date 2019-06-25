module Problem28Test
  ( test
  ) where

import           Problem28  (lsort, lfsort)
import           Test.HUnit (Test (TestList), (~?=))

input = ["abc", "de", "fgh", "de", "ijkl", "mn", "o"] 

test =
  TestList
    [ lsort input ~?=  ["o", "de", "de", "mn", "abc", "fgh", "ijkl"]
    , lfsort input ~?= ["ijkl", "o", "abc", "fgh", "de", "de", "mn"]
    ]
