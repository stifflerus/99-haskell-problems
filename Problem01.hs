module Problem01 (myLast, test) where
  -- (*) Find the last element of a list. 

  import Test.HUnit ((~?=), Test(TestList, TestCase))

  myLast :: [a] -> a
  myLast [x] = x
  myLast (_:xs) = myLast xs 

  test = TestList
    [ myLast [1,2,3,4] ~?= 4
    , myLast ['x','y','z'] ~?= 'z' ]