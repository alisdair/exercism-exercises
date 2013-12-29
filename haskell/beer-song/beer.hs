module Beer (sing, verse) where

import Data.Char (toLower)

sing :: Int -> Int -> String
sing x y = unlines . reverse . map verse $ [y..x]

verse :: Int -> String
verse 0 = unlines [wall 0,
  "Go to the store and buy some more, 99 bottles of beer on the wall."]
verse n = unlines [wall n, takeDown n]

wall :: Int -> String
wall n = (ofBeer s) ++ ", " ++ map toLower s ++ " of beer."
  where
    s = bottles n

ofBeer :: String -> String
ofBeer s = s ++ " of beer on the wall"

bottles :: Int -> String
bottles 0 = "No more bottles"
bottles 1 = "1 bottle"
bottles n = show n ++ " bottles"

takeDown :: Int -> String
takeDown n = "Take " ++ one n ++ " down and pass it around, " ++
  ofBeer (map toLower . bottles $ n - 1) ++ "."

one :: Int -> String
one 1 = "it"
one _ = "one"
