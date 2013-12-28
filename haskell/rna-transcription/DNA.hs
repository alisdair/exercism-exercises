module DNA (toRNA) where

toRNA :: String -> String
toRNA = map go
  where
    go 'T' = 'U'
    go x   = x
