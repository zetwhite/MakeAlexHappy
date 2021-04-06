module Main where
import Grammar
import Tokens
import Data.List (intercalate)

join = intercalate

main = do
  s <- getContents
  let ss = map show $ parseNums (alexScanTokens s)
  putStrLn $ intercalate " " ss