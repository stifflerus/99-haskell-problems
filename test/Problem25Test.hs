module Problem25Test
  ( test
  ) where

import           Data.List  (permutations)
import           Problem25  (randomPermutation)
import           Test.HUnit (Test (TestCase, TestList), assertBool)

test =
  TestList
    [ TestCase $
      randomPermutation [1 .. 100] >>= \p ->
        assertBool "Result was wrong length" (length p == 100)
    , TestCase $
      randomPermutation [1 .. 100] >>= \p ->
        assertBool
          "Selection was not in original list"
          (all (\e -> e `elem` [1 .. 100]) p)
    , TestCase $
      randomPermutation [1..10] >>= \p ->
        assertBool "Is not permutation" (p `elem` permutations [1..10])
    ]
