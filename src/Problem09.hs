{-# LANGUAGE UnicodeSyntax #-}

module Problem09
  ( pack
  , test
  ) where

-- (**) Pack consecutive duplicates of list elements into sublists.
-- If a list contains repeated elements they should be placed in separate
-- sublists.
import Test.HUnit (Test (TestList), (~?=))

pack ∷ Eq a ⇒ [a] → [[a]]
pack []  = []
pack [x] = [[x]]
pack x   = takeWhile (== head x) x : pack (dropWhile (== head x) x)

test =
  TestList
    [ pack
        ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] ~?=
      ["aaaa", "b", "cc", "aa", "d", "eeee"]
    ]
