module Envirnoment where 
import Data.Maybe 
import AST 

-- returing Type 
data Error = TypeError String 
    | UndefinedIdError String 
    | Error String 
    deriving (Show)

data ExpResult = Good Atom 
    | Bad Error

instance Show ExpResult where 
    show (Good x) = "[GOOD] " ++ show x
    show (Bad x) = "[BAD] " ++ show x

extractAtom :: ExpResult -> Atom
extractAtom (Good a) = a

data LineResult = LineResult { getStore :: Store  
    , getExpResult :: ExpResult 
}

type Store = Ident -> Atom 
newStore :: Store
newStore id = Void

update :: Ident -> Atom -> Store -> Store 
update id value store = store' 
    where store' id'    | id' == id = value 
                        | otherwise = store id'

-- go! go! go! give me a result 
runProgram :: Program-> Store -> LineResult 
runProgram (SExp' x) store = LineResult store (runSExp x store) 
runProgram (Def' x) store = LineResult store' $ Good Void
    where store' = runDef x store

runDef :: Definition -> Store -> Store 
runDef (Bind' xid xexpr) store = update xid xatom store
    where xatom = extractAtom (runSExp xexpr store) 


runSExp :: SExpression -> Store -> ExpResult 
runSExp (Atom' xatom) store = Good $ xatom 
runSExp (Id' xident) store = Good $ store xident
runSExp (Expr' xexpr) store = runExp xexpr store


runExp :: Expression -> Store -> ExpResult 
runExp (Bi' op exp1 exp2) store = runBOp op res1 res2 
    where   res1 = extractAtom (runSExp exp1 store) 
            res2 = extractAtom (runSExp exp2 store)
runExp (Uni' op exp) store = runUOp op res 
    where res = extractAtom (runSExp exp store)
runExp (If' cond exp1 exp2) store 
    | condRes == AtomBool' True = runSExp exp1 store
    | otherwise = runSExp exp2 store
    where condRes = extractAtom (runSExp cond store )

runBOp :: BiOperator -> Atom -> Atom -> ExpResult 
runBOp Plus' (AtomInt' val1) (AtomInt' val2) = Good $ AtomInt' ( val1 + val2 )
runBOp Plus' _ _ = Bad $ TypeError "(+) operand is not numeric"
runBOp Minus' (AtomInt' val1) (AtomInt' val2) = Good $ AtomInt' ( val1 - val2 )
runBOp Devide' (AtomInt' val1) (AtomInt' val2) = Good $ AtomInt' ( val1 `div` val2 )
runBOp Multiply' (AtomInt' val1) (AtomInt' val2) = Good $ AtomInt' ( val1 * val2 )
runBOp Greater' (AtomInt' val1) (AtomInt' val2) = Good $ AtomBool' ( val1 > val2 )
runBOp Lessthan' (AtomInt' val1) (AtomInt' val2) = Good $ AtomBool' (val1 < val2 )
runBOp Eq' x y = Good $ AtomBool' (x == y)
runBOp _ _ _ = Bad $ Error "Error in Binary Operator"


runUOp :: UniOperator -> Atom -> ExpResult 
runUOp Number' (AtomInt' _ ) = Good $ AtomBool' True 
runUOp Number' _ = Good $ AtomBool' False 
-- how to handle display, write, read -> there is restriction using IO () 