{-# LANGUAGE TupleSections #-}

module DNA (count, nucleotideCounts) where

import Data.Map.Strict (Map, fromListWith)

count :: Char -> String -> Int
count n s
  | elem n "ATCGU" = length $ filter (== n) s
  | otherwise      = error $ "invalid nucleotide " ++ show n

nucleotideCounts :: String -> Map Char Int
nucleotideCounts s = fromListWith (+) $ map (,0) "ATCG" ++ map (,1) s
