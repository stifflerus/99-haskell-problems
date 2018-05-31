module Problem08 (compress, test) where
  -- (**) Eliminate consecutive duplicates of list elements. 
  -- If a list contains repeated elements they should be replaced with a single 
  -- copy of the element. The order of the elements should not be changed. 

  import Test.HUnit ((~?=), Test(TestCase, TestList))

  compress :: [a] -> [a]
  compress = error "Not implemented"

  test = TestList
    [ compress "aaaabccaadeeee" ~?= "abcade" ]