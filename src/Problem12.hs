{-# LANGUAGE UnicodeSyntax #-}

module Problem12
  ( test
  ) where

-- (**) Decode a run-length encoded list.
-- Given a run-length code list generated as specified in problem 11.
-- Construct its uncompressed version.
import Problem11  (Encoding (Multiple, Single))
import Test.HUnit (Test (TestList), (~?=))

decodeModified ∷ [Encoding a] → [a]
decodeModified = concatMap expandEncoding
  where
    expandEncoding ∷ Encoding a → [a]
    expandEncoding (Single a)     = [a]
    expandEncoding (Multiple i a) = replicate i a

test =
  TestList
    [ decodeModified
        [ Multiple 4 'a'
        , Single 'b'
        , Multiple 2 'c'
        , Multiple 2 'a'
        , Single 'd'
        , Multiple 4 'e'
        ] ~?=
      "aaaabccaadeeee"
    ]
