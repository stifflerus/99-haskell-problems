module Problem12
  ( decodeModified
  , Encoding(Single, Multiple)
  ) where

import           Problem11 (Encoding (Multiple, Single))

-- | (**) Decode a run-length encoded list.
-- Given a run-length code list generated as specified in problem 11.
-- Construct its uncompressed version.
decodeModified :: [Encoding a] -> [a]
decodeModified = concatMap expandEncoding
  where
    expandEncoding :: Encoding a -> [a]
    expandEncoding (Single a)     = [a]
    expandEncoding (Multiple i a) = replicate i a
