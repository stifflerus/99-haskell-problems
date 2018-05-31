module Problem9 (pack, test) where
  -- (**) Pack consecutive duplicates of list elements into sublists. 
  -- If a list contains repeated elements they should be placed in separate 
  -- sublists. 

  import Test.HUnit ((~?=), Test(TestCase, TestList))

  pack :: [a] -> [[a]]
  pack = error "Not implemented"

  test = TestList
    [ pack 
      ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
      ~?= ["aaaa","b","cc","aa","d","eeee"] ]