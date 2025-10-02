#p1 #p2 #bsl

### **ps1**
Write more arithmetic expressions
-  link:[even-more-foo-evaluation-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/even-more-foo-evaluation-starter.rkt "even-more-foo-evaluation-starter.rkt")
-  link:[even-more-foo-evaluation-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/even-more-foo-evaluation-solution.rkt "even-more-foo-evaluation-solution.rkt")
```LISP

;; even-more-foo-evaluation-starter.rkt

; PROBLEM:
; 
; Given the following function definition:
; 
; (define (farfle s)
;   (string-append s s))
; 
; Write out the step-by-step evaluation of the expression: 
; 
; (farfle (substring "abcdef" 0 2))
; 
; Be sure to show every intermediate evaluation step.
; 

(define (farfle s)
  (string-append s s))
(farfle (substring "abcdef" 0 2))
(farfle "ab") ; 2 is exclusive
(string-append "ab" "ab")
"abab"

        
```
### p2
Write out the step-by-step evaluation of expressions involving calls to primitives
-  link:[cflag-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/cflag-starter.rkt "cflag-starter.rkt")
-  link:[cflag-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/cflag-solution.rkt "cflag-solution.rkt")

```LISP

;; cflag-starter.rkt
(require 2htdp/image)

; 
; PROBLEM:
; 
; The background for the Canadian Flag (without the maple leaf) is this:
;          .
;          
; Write an expression to produce that background. (If you want to get the
; details right, officially the overall flag has proportions 1:2, and the 
; band widths are in the ratio 1:2:1.)
; 
; 


(define background (rectangle 100 50 "solid" "white"))
(define red-panel (rectangle 25 50 "solid" "red"))
(overlay/align "left" "middle" red-panel (overlay/align "right" "middle" red-panel background))

```
![[Pasted image 20251002134109.png]]