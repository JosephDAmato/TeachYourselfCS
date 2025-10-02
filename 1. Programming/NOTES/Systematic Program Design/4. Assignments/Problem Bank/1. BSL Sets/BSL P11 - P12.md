\#p1 #p2 #bsl

### **ps1**
Write more arithmetic expressions
-  link: [triangle-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/triangle-solution.rkt "triangle-solution.rkt")
-  link: [triangle-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/triangle-solution.rkt "triangle-solution.rkt")
```LISP

;; triangle-starter.rkt
(require 2htdp/image)
; PROBLEM:
; 
; Write an expression that uses triangle, overlay, and rotate to produce an image similar to this:
; 
;                                   .
; You can consult the DrRacket help desk for information on how to use triangle and overlay.
; Don't worry about the exact size of the triangles.
; 



(define tri-one (rotate 180 (triangle 100 "solid" "yellow")))
(define tri-two (triangle 100 "solid" "green"))
(overlay tri-two tri-one)
```

![[Pasted image 20251002134918.png]]
### p2
Write out the step-by-step evaluation of expressions involving calls to primitives
-  link:[bobble-evaluation-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/bobble-evaluation-starter.rkt "bobble-evaluation-starter.rkt")
-  link:[bobble-evaluation-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/bobble-evaluation-solution.rkt "bobble-evaluation-solution.rkt")

```LISP

;; bobble-evaluation-starter.rkt

; PROBLEM:
; 
; Given the following function definition:
; 
; (define (bobble s)
;   (if (<= (string-length s) 6)
;       (string-append s "ible")
;       s))
; 
; Write out the step-by-step evaluation of the expression:
; 
; (bobble (substring "fungus" 0 4))
; 
; Be sure to show every intermediate evaluation step (including the original expression
; and the final result, our answer has 7 steps).

(define (bobble s)
  (if (<= (string-length s) 6)
      (string-append s "ilbe")
      s))

(bobble (substring "fungus" 0 4))
(bobble "fung")
(if (<= (string-length "fung") 6)
    (string-append "fung" "ible")
    "fung")
(if (<= 6 6)
    (string-append "fung" "ible")
    "fung")
;TRUE
(string-append "fung" "ible")
"fungible"
```