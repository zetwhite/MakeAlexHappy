goodSumWithNext :: Num c => [c] -> [c]
goodSumWithNext xs = zipWith (+) xs (tail xs)