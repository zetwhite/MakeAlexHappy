module Test where 
  import Data.List(intercalate)

data Sign
  = Pos Int
  | Zero 
  | Neg Int
  deriving Eq 

instance Show Sign where 
  show (Pos n) = "Pos (" ++ (show n) ++ ")"
  show Zero = "Zero"
  show (Neg n) = "Neg(" ++ (show n) ++ ")"

sign n = 
  if n > 0 then Pos n 
  else if n < 0 then Neg n 
  else Zero 

join = intercalate 

main = do 
  let ns = [-2, 0, 5]
  let signs = map sign ns
  let outs = map show signs 
  putStrLn(join "\n" outs)