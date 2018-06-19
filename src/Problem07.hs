module Problem07
  ( myFlatten
  , NestedList(Elem, List)
  ) where

-- | Type representing a nested list
data NestedList a
  = Elem a
  | List [NestedList a]

-- | (**) Flatten a nested list structure.
-- Transform a list, possibly holding lists as elements into a `flat' list by
-- replacing each list with its elements (recursively).
myFlatten :: NestedList a -> [a]
myFlatten (Elem a) = [a]
myFlatten (List a) = concatMap myFlatten a
