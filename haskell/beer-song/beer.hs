module Beer (sing, verse) where

import Data.Char (toUpper)

sing :: Int -> Int -> String
sing x y = unlines . map verse $ [x, x-1 .. y]

verse :: Int -> String
verse 0 = unlines [wall 0,
  "Go to the store and buy some more, 99 bottles of beer on the wall."]
verse n = unlines [wall n, takeDown n]

wall :: Int -> String
wall n = (ofBeer . capitalise) s ++ ", " ++ s ++ " of beer."
  where
    s = bottles n

ofBeer :: String -> String
ofBeer = (++ " of beer on the wall")

capitalise :: String -> String
capitalise (x:xs) = toUpper x : xs

bottles :: Int -> String
bottles 0 = "no more bottles"
bottles 1 = "1 bottle"
bottles n = show n ++ " bottles"

takeDown :: Int -> String
takeDown n = "Take " ++ one n ++ " down and pass it around, " ++
  (ofBeer . bottles $ n - 1) ++ "."

one :: Int -> String
one 1 = "it"
one _ = "one"
