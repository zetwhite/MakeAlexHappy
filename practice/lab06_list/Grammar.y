{
module Grammar where
import Tokens
}

%name parseList
%tokentype { Token }
%error { parseError }

%token
int { TokenInt $$ }
id { TokenId $$ }
’(’ { TokenLP }
’)’ { TokenRP }
%%

List: ’(’ sLst ’)’ { $2 }
sLst: { Atom AtomNil }
  | Atom sLst { Pair (Atom $1) $2 }
Atom: int { AtomInt $1 }
  | id { AtomId $1 }

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

-- parseList :: [Token] -> Sexp

data Sexp
  = Atom Atom
  | Pair Sexp Sexp
  deriving (Eq, Show)

data Atom
  = AtomInt Integer
  | AtomId String
  | AtomSym Char
  | AtomNil
  deriving (Eq, Show)
}