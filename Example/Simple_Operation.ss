[!] After run main.exe, try under code which start with '>>'.
[!] You can see the same result as below. (format of [SUCCESS / ERROR] exrpesssion result)



>> (+ 1 2) 
[SUCCESS] AtomInt' 3

>> (- 2 5)
[SUCCESS] AtomInt' (-3)

>> (+ (* 10 5) 24)
[SUCCESS] AtomInt' 74

>> (/ (* (+ 3 3) (+ 4 4 )) (* (+ 1 1) (+ 2 2))) 
[SUCCESS] AtomInt' 6



>> (define x 12)
[SUCESS] 

>> (define y 24)
[SUCESS] 

>> (* (+ x y) x)
[SUCCESS] AtomInt' 432

>> (define z (/ y x)) 
[SUCESS] 

>> z
[SUCCESS] AtomInt' 2

