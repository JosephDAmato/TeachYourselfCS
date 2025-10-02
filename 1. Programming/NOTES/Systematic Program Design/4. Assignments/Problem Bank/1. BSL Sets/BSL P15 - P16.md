#p1 #p2 #bsl

### **ps1**5
Write more arithmetic expressions
-  link:  [function-writing-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/function-writing-starter.rkt "function-writing-starter.rkt")
-  link: [function-writing-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/function-writing-solution.rkt "function-writing-solution.rkt")
```LISP

;; function-writing-starter.rkt

; 
; PROBLEM:
; 
; Write a function that consumes two numbers and produces the larger of the two. 
; 

(define (consumes  a b)
  (if (> a b)
      a
      b))
(consumes 54 4)
```
### p16
Write out the step-by-step evaluation of expressions involving calls to primitives
-  link: [foo-evaluation-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/foo-evaluation-starter.rkt "foo-evaluation-starter.rkt")
-  link: [foo-evaluation-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/foo-evaluation-solution.rkt "foo-evaluation-solution.rkt")

```LISP

;; foo-evaluation-starter.rkt

; 
; PROBLEM:
; 
; Given the following function definition:
; 
; (define (foo s)
;   (if (string=? (substring s 0 1) "a")
;       (string-append s "a")
;       s))
; 
; Write out the step-by-step evaluation of the expression: 
; 
; (foo (substring "abcde" 0 3))
; 
; Be sure to show every intermediate evaluation step.
; 

(define (foo s)
  (if (string=? (substring s 0 1) "a")
      (string-append s "a")
      s))
(foo (substring "abcde" 0 3))
(foo "abc")
(if (string=? (substring "abc" 0 1) "a")
    (string-append "abc" "a")
    "abc")
(if (string=? "a" "a")
    (string-append "abc" "a")
    "abc")
;TRUE
(string-append "abc" "a")
"abca"
```