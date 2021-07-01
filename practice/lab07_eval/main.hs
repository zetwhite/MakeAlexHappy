module Main
where

data Program = On ExprSequence
  deriving (Read, Show)
data ExprSequence = Total Expression ExprSequence
  | TotalOff Expression
  deriving (Read, Show)
data Expression = Plus Expression Expression
  | Times Expression Expression
  | Minus Expression Expression
  | Mod   Expression Expression
  | Div   Expression Expression
  | If Expression Expression Expression
  | LastAnswer
  | Braced Expression
  | N Int
  deriving (Read, Show)


pp :: Program -> [Int]
pp (On s) = ss s 0

ss :: ExprSequence -> Int -> [Int]
ss (Total e s) n = let n' = (ee e n) in n' : (ss s n')
ss (TotalOff e) n = (ee e n) : []

ee :: Expression -> Int -> Int
ee (Plus e1 e2) n = (ee e1 n) + (ee e2 n)
ee (Times e1 e2) n = (ee e1 n) * (ee e2 n)
ee (Minus e1 e2) n = (ee e1 n) - (ee e2 n)
ee (Mod e1 e2) n = (ee e1 n) `mod` (ee e2 n)
ee (Div e1 e2) n = (ee e1 n) `div` (ee e2 n)
ee (If e1 e2 e3) n
  | (ee e1 n) == 0 = (ee e2 n)
  | otherwise = (ee e3 n)
ee (LastAnswer) n = n
ee (Braced e) n = (ee e n)
ee (N num) n = num

test = On (TotalOff (Times (N 4)
  (Braced (Plus (N 3)
    (N 2)))))

test2 = On (TotalOff (If (N 0) (Minus (N 7) (N 2)) (Mod (N 7) (N 4))))

main :: IO() 
main = do
  s <- getContents
  let myprog = read s 
  print $ last $ pp myprog 