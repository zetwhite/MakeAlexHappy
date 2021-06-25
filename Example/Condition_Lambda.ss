[!] After run main.exe, try under code which start with '>>'.
[!] You can see the same result as below. (format of [SUCCESS / ERROR] exrpesssion result)



>> ((lambda (x) (+ x 1)) 2)
[SUCCESS] AtomInt' 3

>> ((lambda (x y) (+ x y)) 10 20)
[SUCCESS] AtomInt' 30

>> ((lambda (x y z) (* (+ x y) z)) 10 20 100)
[SUCCESS] AtomInt' 3000

>> ((lambda (a b c d) (+ (+ a b) (+ c d))) 10 20 30 40) 
[SUCCESS] AtomInt' 100

>> ( * 2 ((lambda (a b c d) (+ (+ a b) (+ c d))) 10 20 30 40))
[SUCCESS] AtomInt' 200



>> ((lambda (x y) (if (> x y) x y)) 10 20)  
[SUCCESS] AtomInt' 20

>> ((lambda (x y) (if (> x y) x y)) 50  20)
[SUCCESS] AtomInt' 50

