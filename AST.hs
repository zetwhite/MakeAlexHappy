module AST where 

data Program = SExp' SExpression 
        | Def' Definition 
        deriving (Show)
 
data SExpression = Atom' Atom 
        | Id' Ident 
        | Expr' Expression 
        deriving (Show)

data Atom =  AtomBool' Bool 
        | AtomStr' String 
        | AtomInt' Int 
        deriving (Show, Eq)

data Ident = Ident' String 
        deriving (Show, Eq)

data Expression = Bi' BiOperator SExpression SExpression 
        | Uni' UniOperator SExpression
        | If' SExpression SExpression SExpression  
        deriving (Show)

data BiOperator = Plus' 
        | Minus' 
        | Multiply'
        | Devide'
        | Greater'
        | Lessthan'
        | Eq' 
        deriving (Show)

data UniOperator = Read'  
        | Write'
        | Display' 
        | Null'
        | Pair'
        | AtomC'
        | Number' 
        deriving (Show)

data Definition = Bind' Ident  SExpression 
        deriving (Show)

{-
runProgram :: Program -> Maybe Atom 
runProgram (SExp' x) = runSExp x 
runProgram (Def' x) = runDef x `seq` Nothing 

runDef :: Definition -> 
 -}
