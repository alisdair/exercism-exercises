module WordCount (wordCount) where

import Data.List (sort, group)
import Data.Map (Map, fromList)
import Data.Char

normalise :: String -> String
normalise = map go
    where
        go c
            | isAlpha c = toLower c
            | isDigit c = c
            | otherwise = ' '

wordCount :: String -> Map String Int
wordCount = fromList . map count . group . sort . words . normalise
    where
        count x = (head x, length x)
