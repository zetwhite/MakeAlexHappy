module Main
where

newtype Program = Pgm Stmt
  deriving (Read, Show)
data Stmt = Seq Stmt Stmt
  | Assn Ident Expr
  | If BoolExpr Stmt Stmt
  deriving (Read, Show)
data Expr = Add Expr Expr
  | Mul Expr Expr
  | Sub Expr Expr
  | Mod Expr Expr
  | Div Expr Expr
  | Id Ident
  | N Int
  deriving (Read, Show)
data BoolExpr = Equ Expr Expr
  | Not BoolExpr
  deriving (Read, Show)
type Ident = Char
type Store = Ident -> Int

newstore :: Store
newstore id = 0

update :: Ident -> Int -> Store -> Store
update id val store = store'
  where store' id' | id' == id = val
                   | otherwise = store id'

pp :: Program -> Int -> Int
pp (Pgm stmt) n = ss stmt (update 'i' n newstore) 'o'

ss :: Stmt -> Store -> Store
ss (Seq c1 c2) s = ss c2 (ss c1 s)
ss (Assn id e) s = update id (ee e s) s
ss (If b c1 c2) s = if bb b s then ss c1 s else ss c2 s

ee :: Expr -> Store -> Int
ee (Add e1 e2) s = ee e1 s + ee e2 s
ee (Mul e1 e2) n = (ee e1 n) * (ee e2 n)
ee (Sub e1 e2) n = (ee e1 n) - (ee e2 n)
ee (Mod e1 e2) n = (ee e1 n) `mod` (ee e2 n)
ee (Div e1 e2) n = (ee e1 n) `div` (ee e2 n)
ee (Id id) s = s id
ee (N n) s = n

bb :: BoolExpr -> Store -> Bool
bb (Equ e1 e2) s = ee e1 s == ee e2 s
bb (Not b) s = not (bb b s)

pgm1 = Pgm (Seq
           (Assn 'o' (N 1))
           (If (Equ (Id 'i') (N 0))
              (Assn 'o' (N 3))
              (Assn 'o' (Add (Id 'o') (Id 'i')))))

main :: IO() 
main = do 
  n <- getLine
  let num = read n :: Int
  -- print n
  s <- getContents
  let myprog = read s :: Program
  --print s 
  print $ pp myprog num
  --print $ pp pgm1 3