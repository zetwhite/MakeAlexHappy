[!] After run main.exe, try under code which start with '>>'.
[!] You can see the same result as below. (format of [SUCCESS / ERROR] exrpesssion result)



>> (+ 1 "happy")
[ERROR] TypeError "(+) operand is not numeric"

>> (+ #t "hihi")
[ERROR] TypeError "(+) operand is not numeric"



>> (define str "hello") 
[SUCESS] 

>> str 
[SUCCESS] AtomStr' "hello"

>> (Number? str) 
[SUCCESS] AtomBool' False



>> (define angle 1004)
[SUCESS]

>> angle 
[SUCCESS] AtomInt' 1004

>> (Number? angle)
[SUCCESS] AtomBool' True

>> (Eq? 1004 angle)
[SUCCESS] AtomBool' True

>> (Eq? 1003 angle)
[SUCCESS] AtomBool' False



>> (if (Eq? 1003 Angle) "NotAngle" "YesAngle")   
[SUCCESS] AtomStr' "YesAngle"

>> (if (< Angle 1000) (+ 1000 1000) (- 1000 1000))
[SUCCESS] AtomInt' 2000