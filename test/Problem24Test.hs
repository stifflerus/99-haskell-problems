module Problem24Test
  ( test
  ) where

import           Problem24  (diffSelect)
import           Test.HUnit (Test (TestCase, TestList), assertBool)

test =
  TestList
    [ TestCase $
      diffSelect 3 (45 :: Integer) >>= \s ->
        assertBool "Result was wrong length" (length s == 3)
    , TestCase $
      head <$> diffSelect 1 (45 :: Integer) >>= \i ->
        assertBool "Selection was not in orginal string" (i `elem` [1 .. 45])
    ]
