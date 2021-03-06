module Main where 
import Data.Typeable 
import Grammar 
import Tokens 
import Envirnoment
import AST 
import System.IO
import System.IO.Error

isError :: a -> Bool 
isError a = True 

myREPL:: Store -> IO()
myREPL store = do
  putStr ">> "
  l <- tryIOError getLine
  case l of
    Left e ->
      if isEOFError e
         then putStrLn "Bye!\n"
         else ioError e     
    Right s ->
      if s/="" 
      then 
        do
          let ast = parseList (alexScanTokens s)
          --need to implement isError to continuing REPL
          if isError ast 
          then 
            do
              -- putStrLn (show ast)
              let result = (runProgram ast store)
              putStrLn (show $ getExpResult result)
              myREPL $ getStore result
          else 
            myREPL store
      else
        myREPL store


main :: IO() 
main = do 
  hSetBuffering stdout NoBuffering 
  myREPL newStore 
