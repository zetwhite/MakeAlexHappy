
# MINI Scheme Interperter 
This is a `Mini scheme Interpreter` made with Haskell (Alex as lexical analyser, Happy as parser).  
[!] This is not a perfect language or interpreter. I just made this as term project of univ lecture.     
[!] I'm stilling working on this project. So, this might be a not final version.    

# Build and Run 
```shell
# first you need to download haskell compiler(ghc)  - https://www.haskell.org/ghc/ 
# build 
make 
# run 
Main.exe
#try example code under /Example Folder
```

# Note 
* `AST.hs` : AST component data type, Symbol table data type
* `Enviroment.hs` : Eval & Apply working part
* `main.hs` : REPL
* `Tokens.x` : scanner, input file of Alex 
* `Grammar.y` : parser, input file of Happy

# Reference 
* haskell ghc compiler : https://www.haskell.org/ghc/ 
* Alex User Guide : https://www.haskell.org/alex/doc/html/index.html
* Happy User Guide : https://www.haskell.org/happy/doc/html/index.html
* How to compile lambda : https://matt.might.net/articles/closure-conversion/ 