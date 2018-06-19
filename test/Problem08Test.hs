module Problem08Test
  ( test
  ) where

import           Problem08  (compress)
import           Test.HUnit (Test (TestList), (~?=))

test = TestList [compress "aaaabccaadeeee" ~?= "abcade"]
