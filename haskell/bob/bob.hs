module Bob (responseFor) where

import Data.Char

responseFor :: String -> String
responseFor x
  | all isSpace x = "Fine. Be that way!"
  | any isUpper x && not (any isLower x) = "Woah, chill out!"
  | last x == '?' = "Sure."
  | otherwise = "Whatever."
