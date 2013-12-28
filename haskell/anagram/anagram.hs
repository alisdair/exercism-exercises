module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

normalise :: String -> String
normalise = sort . map toLower

anagramsFor :: String -> [String] -> [String]
anagramsFor s = filter go
  where
    go x = s /= x && normalise s == normalise x
