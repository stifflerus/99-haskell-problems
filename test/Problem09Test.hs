module Problem09Test
  ( test
  ) where

import           Problem09  (pack)
import           Test.HUnit (Test (TestList), (~?=))

test =
  TestList
    [ pack
        ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] ~?=
      ["aaaa", "b", "cc", "aa", "d", "eeee"]
    ]
