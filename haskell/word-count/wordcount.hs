module WordCount (wordCount) where

import Data.List (sort, group)
import qualified Data.Map.Strict as Map
import Data.Char

normalise :: String -> String
normalise = map go
    where
        go c
            | isAlphaNum c = toLower c
            | otherwise    = ' '

wordCount :: String -> Map.Map String Int
wordCount = Map.fromListWith (+) . map go . words . normalise
    where
        go x = (x, 1)
