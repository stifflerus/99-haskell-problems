module Problem02 (myButLast, test) where
  -- (*) Find the last but one element of a list.

  import Test.HUnit ((~?=), Test(TestList, TestCase))

  myButLast :: [a] -> a
  myButLast [x,_] = x
  myButLast (_:xs) = myButLast xs 

  test = TestList
    [ myButLast [1,2,3,4] ~?=  3
    , myButLast ['a'..'z'] ~?= 'y' ]