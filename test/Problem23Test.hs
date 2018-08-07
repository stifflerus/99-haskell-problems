module Problem23Test
  ( test
  ) where

import           Problem23  (rndSelect)
import           Test.HUnit (Test (TestCase, TestList), assertBool)

test =
  TestList
    [ TestCase $
      rndSelect "abcdefgh" 3 >>= \s ->
        assertBool "Result was wrong length" (length s == 3)
    , TestCase $
      head <$> rndSelect "abcdefgh" 1 >>= \c ->
        assertBool "Selection was not in orginal string" (c `elem` "abcdefgh")
    ]
