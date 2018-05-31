module Problem4 (myLength, test) where
  -- (*) Find the number of elements of a list. 

  import Test.HUnit (Test(TestCase, TestList), (~?=))

  myLength :: [a] -> Int
  myLength [] = 0
  myLength x = 1 + (myLength $ tail x)

  test = TestList
    [ myLength [123, 456, 789] ~?= 3
    , myLength "Hello, world!" ~?= 13 ]