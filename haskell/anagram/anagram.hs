module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

normalise :: String -> String
normalise = sort . map toLower

anagramsFor :: String -> [String] -> [String]
anagramsFor s = filter go
  where
    ns   = normalise s
    go x = s /= x && ns == normalise x
