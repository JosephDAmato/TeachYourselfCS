#p1 #p2 #bsl

### **ps1**
Write more arithmetic expressions
-  link: [arithmetic-expression-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/arithmetic-expression-starter.rkt "arithmetic-expression-starter.rkt")
-  link: [arithmetic-expression-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/arithmetic-expression-solution.rkt "arithmetic-expression-solution.rkt")
```LISP

;; arithmetic-expression-starter.rkt

; 
; PROBLEM:
; 
; Write the BSL expression that represents the arithmetic expression (7 - 2) * 4 which equals 20. 
; Do not just write 20! Instead write BSL expression that clearly mirrors  (7 - 2) * 4.
; 

(* (- 7 2) 4)
```
### p2
Write out the step-by-step evaluation of expressions involving calls to primitives
-  link: [overlay-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/overlay-starter.rkt "overlay-starter.rkt")
-  link: [overlay-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/overlay-solution.rkt "overlay-solution.rkt")

```LISP

;; overlay-starter.rkt
(require 2htdp/image)
; 
; PROBLEM:
; 
; Write an expression that uses star and overlay to produce an image similar to this:
; 
;                                   .
; You can consult the DrRacket help desk for information on how to use star and overlay. 
; Don't worry about the exact size of the stars.
; 

(define star-1 (star-polygon 500 5 2 "solid" "blue"))
(define star-2 (star-polygon 300 5 2 "solid" "yellow"))
(define star-3 (star-polygon 100 5 2 "solid" "blue"))
(overlay star-3(overlay star-2  star-1))
           
```
![[Pasted image 20251002140443.png]]