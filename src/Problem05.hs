{-# LANGUAGE UnicodeSyntax #-}

module Problem05
  ( myReverse
  , test
  ) where

-- (*) Reverse a list.
import Test.HUnit (Test (TestList), (~?=))

myReverse ∷ [a] → [a]
myReverse []     = []
myReverse [x]    = [x]
myReverse (x:xs) = myReverse xs ++ [x]

test = TestList [myReverse [1, 2, 3, 4] ~?= [4, 3, 2, 1]]
