module Envirnoment where 
import AST 

extractInteger :: Atom -> Int 
extractInteger (AtomInt' x) = x 
extractInteger (AtomBool' True) = 1 
extractInteger (AtomBool' False) = 0 
extractInteger (AtomStr' _) = 0 --how to handle all this syntax error...? 

extractAtom :: Maybe Atom -> Atom 
extractAtom (Maybe x) = x 
extractAtom Nothing = AtomInt' 0

type Store = Ident -> Atom 
newStore :: Store
newStore id = AtomInt' 0 

update :: Ident -> Atom -> Store -> Store 
update id value store = store' 
    where store' id'    | id' == id = value 
                        | otherwise = store id'

runProgram :: Program-> Store -> Maybe Atom 
runProgram (SExp' x) store = runSExp x store
runProgram (Def' x) store = runDef x store `seq` Nothing 

runDef :: Definition -> Store -> Nothing 
runDef (Bind' xi, xexp) store = update xi xatom store 
    where xatom = extractAtom (runSExp x store) 

runSExp :: SExpression -> Store -> Atom 
runSExp (Atom' xatom) store = xatom 
runSExp (Id' xident) store =  store xident
runSExp (Expr' xexpr) store = runExp xexpr 

runExp :: Exp -> Store -> Atom 
runExp (Bi' xop xexp1 xexp2) store = runBOp xop (runSExp xexp1 store) (runSExp exp1 store)
-- runExp (Uni' xop xexp1) store = 
-- runExp (If' xcond xtrue xfalse) store

runBOp :: BiOperator -> Atom -> Atom -> Atom 
runBOp (Plus' val1 val2) = AtomInt' (extractInteger val1) + (extractInteger val2) 
runBOp (Minus' val1 val2) = AtomInt' (extractInteger val1) - (extractInteger val2)
--runBOp ()
    