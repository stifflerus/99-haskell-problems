module Problem19
  ( rotate
  ) where

-- | (**) Rotate a list N places to the left.
-- Hint: Use the predefined functions length and (++).
rotate :: [a] -> Int -> [a]
rotate xs i = take (length xs) $ drop (length xs + i) $ cycle xs
