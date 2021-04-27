{
module Grammar where
import Tokens
}

%name parseList
%tokentype { Token }
%error { parseError }

%token
int           { TokenInt $$ }
id            { TokenId $$ }
lp            { TokenLP }
rp            { TokenRP }
%%

List:   lp sLst rp     { $2. }
sLst:   Atom sLst      { Pair (Atom $1) $2  }
  |                    { Atom AtomNil 0 }
Atom: int              { AtomInt $1 }
  | id                 { AtomId $1 }


{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Sexp
  = Atom Atom Int
  | Pair Sexp Sexp Int 
  deriving (Eq, Show)

data Atom
  = AtomInt Int
  | AtomId String
  | AtomSym Char
  | AtomNil Int
  deriving (Eq, Show)

increaseDepth :: Sexp -> Sexp 
increaseDepth ( Atom _ n ) = ( Atom _ n)
increaseDepth ( Pa)
}