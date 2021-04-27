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

List:   lp sLst rp      { increaseDepth($2) }

sLst:   Atom sLst       { Pair (Atom $1 0) $2 (getDepth $2) }
  |     List sLst       { Pair $1 $2 (max (getDepth $1) (getDepth $2))}
  |                     { Atom AtomNil 0 }

Atom: int               { AtomInt $1 }
  | id                  { AtomId $1 }

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
  | AtomNil
  deriving (Eq, Show)

getDepth :: Sexp -> Int 
getDepth (Atom _ i) = i 
getDepth (Pair _ _ i) = i 

increaseDepth :: Sexp -> Sexp 
increaseDepth (Atom a i) = (Atom a (i+1))
increaseDepth (Pair a b i) = (Pair a b (i+1))


{- 
old version. i think i can use this later :D

List:   lp sLst rp      { Node ((getDepth $2) + 1) (getINode $2) }

sLst:   Atom sLst       { Node (getDepth $2) (Pair (Atom (getINode $1)) (getINode $2))  }
  |                     { Node 0 (Atom AtomNil) }

Atom: int               { Node 0 (AtomInt $1) }
  | id                  { Node 0 (AtomId $1) }

data Node a = Node
  { depth :: Int
  , innernode :: a
  } deriving (Eq, Show)

getDepth :: Node a -> Int 
getDepth (Node d _ ) = d 

getINode :: Node a -> a 
getINode (Node _ i) = i

-- increaseDepth :: Node a -> Node a
-- increaseDepth (Node {depth = d, innernode = i}) = Node (d+1) i

-}

}