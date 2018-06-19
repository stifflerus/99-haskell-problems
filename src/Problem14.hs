module Problem14 (dupli, test) where
-- (*) Duplicate the elements of a list.

import           Test.HUnit (Test (TestList), (~?=))

dupli :: [a] -> [a]
dupli []     = []
dupli [x]    = [x, x]
dupli (x:xs) = x : x : dupli xs

test = TestList
  [ dupli [1, 2, 3] ~?= [1, 1, 2, 2, 3, 3] ]
