module Problem11 (encodeModified, test) where
  -- (*) Modified run-length encoding.
  -- Modify the result of problem 10 in such a way that if an element has no 
  -- duplicates it is simply copied into the result list. Only elements with 
  -- duplicates are transferred as (N E) lists. 

  import Test.HUnit ((~?=), Test(TestCase, TestList))
  import Problem10 (encode)

  data Encoding a = Single a | Multiple Int a deriving (Eq, Show)

  encodeModified :: Eq a => [a] -> [Encoding a]
  encodeModified = map f . encode
    where
      f (1, a) = Single a
      f (n, a) = Multiple n a

  test = TestList
    [ encodeModified "aaaabccaadeeee" ~?= 
      [ Multiple 4 'a' 
      , Single 'b' 
      , Multiple 2 'c'
      , Multiple 2 'a'
      , Single 'd'
      , Multiple 4 'e'] ]