module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

normalise :: String -> String
normalise = sort . map toLower

anagramsFor :: String -> [String] -> [String]
anagramsFor s xs = filter go xs
  where
    go x = normalise s == normalise x && s /= x
