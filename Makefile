all: Main

Tokens.hs: Tokens.x
	alex Tokens.x

Grammar.hs: Grammar.y
	happy Grammar.y

AST.o : AST.hs
	ghc --make AST

Envirnoment.o : Envirnoment.hs 
	ghc --make Envirnoment 

Main: Main.hs Tokens.hs Grammar.hs AST.o Envirnoment.o 
	ghc --make Main

clean: 
	del Tokens.hs Grammar.hs
	del *.o
	del *.hi 