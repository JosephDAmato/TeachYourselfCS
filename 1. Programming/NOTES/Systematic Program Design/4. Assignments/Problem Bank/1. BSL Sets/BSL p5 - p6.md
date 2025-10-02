#p1 #p2 #bsl

### **ps5**
Write expressions to operate on booleans using primitives
- [compare-images-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/compare-images-starter.rkt "compare-images-starter.rkt")
- [compare-images-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/compare-images-solution.rkt "compare-images-solution.rkt")
```LISP
(require 2htdp/image)

;; compare-images-starter.rkt

; 
; PROBLEM:
; 
; Based on the two constants provided, write three expressions to determine whether: 
; 
; 1) IMAGE1 is taller than IMAGE2
; 2) IMAGE1 is narrower than IMAGE2
; 3) IMAGE1 has both the same width AND height as IMAGE2
; 


(define IMAGE1 (rectangle 10 15 "solid" "red"))
(define IMAGE2 (rectangle 15 10 "solid" "red"))
;1)
(> (image-height IMAGE1) (image-height IMAGE2))
;2)
(< (image-width IMAGE1) (image-width IMAGE2))
;3)
(and
 (= (image-width IMAGE1) (image-width IMAGE2))
 (= (image-height IMAGE1) (image-height IMAGE2)) )
         

```
### p6
Step by step evaluation of a call to a function that calls a number primitive in its body..
- [more-foo-evaluation-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/more-foo-evaluation-starter.rkt "more-foo-evaluation-starter.rkt")
- [more-foo-evaluation-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/more-foo-evaluation-solution.rkt "more-foo-evaluation-solution.rkt")

```LISP

;; more-foo-evaluation-starter.rkt

; PROBLEM:
; 
; Given the following function definition:
; 
; (define (foo n)
;   (* n n))
; 
; Write out the step-by-step evaluation of the expression: 
; 
; (foo (+ 3 4))
; 
; Be sure to show every intermediate evaluation step.
; 

(define (foo n)
  (* n n))
(foo (+ 3 4))
(foo 7)
(* 7 7)
49
```