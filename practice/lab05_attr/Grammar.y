{
module Grammar where
import Tokens
}

%name parseList
%tokentype { Token }
%error { parseError }

%token 
  int {T_Int $$ }
%%

aLst :          { [] }
  | Atom aLst   { $1 : $2 }
Atom : int      { Int $1 }

{
parseError :: [Token] -> a 
parseError _ = error "Parse error"

data ParserRule 
  = Int Int 
  deriving (Eq)

instance Show ParserRule where  -- Atom in Show class 
  show (Int n) = "Int ("++ show (n+1) ++ ")"
}
