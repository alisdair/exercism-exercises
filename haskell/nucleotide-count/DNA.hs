module DNA (count, nucleotideCounts) where

import qualified Data.Map.Strict as Map

count :: Char -> String -> Int
count 'A' s = length $ filter (== 'A') s
count 'C' s = length $ filter (== 'C') s
count 'T' s = length $ filter (== 'T') s
count 'G' s = length $ filter (== 'G') s
count 'U' s = length $ filter (== 'U') s
count x _   = error $ "invalid nucleotide " ++ show x

nucleotideCounts :: String -> Map.Map Char Int
nucleotideCounts s = Map.fromList $ map nucleotideCount nucleotides
  where
    nucleotides = "ATCG"
    nucleotideCount c = (c, count c s)
