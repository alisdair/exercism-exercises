module DNA (count, nucleotideCounts) where

import qualified Data.Map.Strict as Map

count :: Char -> String -> Int
count n s
  | elem n "ATCGU" = length $ filter (== n) s
  | otherwise      = error $ "invalid nucleotide " ++ show n

nucleotideCounts :: String -> Map.Map Char Int
nucleotideCounts s = Map.fromList $ map pairCount nucleotides
  where
    pairCount c = (c, count c s)
    nucleotides = "ATCG"
