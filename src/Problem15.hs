module Problem15 (repli, test) where
-- (**) Replicate the elements of a list a given number of times.

import           Test.HUnit (Test (TestList), (~?=))

repli :: [a] -> Int -> [a]
repli a i = concatMap (replicate i) a

test = TestList
  [ repli "abc" 3 ~?= "aaabbbccc" ]
