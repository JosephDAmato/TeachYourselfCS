#p1 #p2 #bsl

### **ps1**
- [more-arithmetic-expression-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/more-arithmetic-expression-starter.rkt "more-arithmetic-expression-starter.rkt")  
- [more-arithmetic-expression-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/more-arithmetic-expression-solution.rkt "more-arithmetic-expression-solution.rkt")
Write more arithmetic expressions

```lisp

;; more-arithmetic-expression-starter.rkt

; 
; PROBLEM:
; 
; Write two expressions that multiply the numbers 3, 5 and 7. 
; The first should take advantage of the fact that * can accept more than 2 arguments. 
; The second should build up the result by first multiplying 3 times 5 and then multiply the result of that by 7. 
; 

(* 2 5 7 )
(* 7 ( * 3 5))
```

### p2
- [evaluation-prims-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/evaluation-prims-starter.rkt "evaluation-prims-starter.rkt")
- [evaluation-prims-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/evaluation-prims-solution.rkt "evaluation-prims-solution.rkt")
Write out the step-by-step evaluation of expressions involving calls to primitives

```lisp

;; evaluation-prims-starter.rkt

; 
; PROBLEM:
; 
; Write out the step-by-step evaluation for the following expression: 
; 
; (+ (* 2 3) (/ 8 2))
; 


(+ (* 2 3 ) (/ 8 2 ))
(+ 6 4)
10

; 
; PROBLEM:
; 
; Write out the step-by-step evaluation for the following expression: 
; 
; (* (string-length "foo") 2)
; 


(*  (string-length "foo") 2)
(* 3 2 )
```