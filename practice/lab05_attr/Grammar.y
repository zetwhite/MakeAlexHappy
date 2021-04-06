{
module Grammar where
import Tokens
}

%name parseList
%tokentype { Token }
%error { parseError }

%token 
  int { TokenInt $$ }
%%

aLst :          { [] }
  | Atom aLst   { $1 : $2 }
Atom : int      { Int $1 }

{
parseError :: [Token] -> a 
parseError _ = error "Parse error"

data Atom 
  = Int Int 
  deriving (Eq)

instance Show Atom where  -- Atom in Show class 
  show (Int n) = "Int ("++ show (n+1) ++ ")"
}
