module AST where 

-- enviroment manager 
data SymEntry = SymAtom Atom 
    | SymStore Store 
    | Empty

type Store = Ident -> SymEntry
newStore :: Store
newStore id = Empty

update :: Ident -> SymEntry -> Store -> Store 
update id x store = store' 
    where store' id'    | id' == id = x 
                        | otherwise = store id'

                        
data Program = SExp' SExpression 
        | Def' Definition 
        deriving (Show)
 
data SExpression = Atom' Atom 
        | Id' Ident 
        | Expr' Expression 
        deriving (Show, Eq)

data Atom =  AtomBool' Bool 
        | AtomStr' String 
        | AtomInt' Int 
        | Lambda' [Ident] SExpression
        | Void
        deriving (Show, Eq)

data Ident = Ident' String 
        deriving (Show, Eq)

data Expression = Bi' BiOperator SExpression SExpression 
        | Uni' UniOperator SExpression
        | If' SExpression SExpression SExpression  
        | Proc' Atom [SExpression]
        deriving (Show, Eq)

data BiOperator = Plus' 
        | Minus' 
        | Multiply'
        | Devide'
        | Greater'
        | Lessthan'
        | Eq' 
        deriving (Show, Eq)

data UniOperator = Read'  
        | Write'
        | Display' 
        | Null' 
        | Pair'
        | AtomC'
        | Number' 
        deriving (Show, Eq)

data Definition = Bind' Ident  SExpression 
        deriving (Show)
