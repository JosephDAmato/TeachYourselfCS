### HIGHER ORDER PROCEDURES 2
**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]
 [4: Higher Order Procedures 2](https://archive.org/details/ucberkeley_webcast_ZvH3wF2qg7Q)

##### ***Procedure as data this lecture***

---
## Notes
##### First Class Data Type
	
- *A **first-class data type** is something you can use just like any other value in a programming language.  
You can **store it in a variable**, **pass it to a function**, **return it from a function**, and **build new things with it** — just like numbers or strings.

CAN BE
- the value of a variable
- an argument to a procedure
- the value returned by a procedure
- a member of an aggregate
- anonymous
In scheme, if you can manipulate it its first class

How can a procedure be returned by a procedure
```scheme
(define (make-adder num)
	(lambda (x) (+ x num)))
(define plus3 (make-adder 3))
(plus3 8)
11
(define plus5 (make-adder 5))
(plus5 7)
12
(plus5 (plus3 2))
(plus5 5) ; eval step
10
;same as 
((make-adder5) 5)
;================================
(define (compse f g)
	(lambda (x) (f (g x))))
((compose first bf) '(she loves you))
(first(bf('(she loves you))))
;Here, you're **abstracting the nesting** into a reusable function. You’re saying:

;“Give me a function that does `bf` first, then `first`.”

;It’s like defining a pipeline — a **composable behavior** — rather than just executing a one-off nested call

```

```scheme
;;; Note all versions work only for quadratics w/ real roots

;;straightforward bu slow
(define (roots a b c)
  (list (/ (+ (- b) (sqrt (- (* b b) (* 4 a c))))(* 2 a))
      (/ (- (- b) (sqrt (- (* b b) (* 4 a c))))(* 2 a)) ))
(roots 1 -5 6)
(3 2)

; better, but you define a helper and make 
(define (roots a b c )
	(define (roots1 d)
		(list (/ (+ (- b) d) (* 2 a))
			(/ (- (- b) d) (* 2 a)) ))
	(roots1 (sqrt (- (* b b) (* 4 a c)))) )      

;Lets try with lambda
(define (roots a b c)
	((lambda (d)
		(list (/ (+ (-b) d)(* 2 a))
			  (/ (- (-b) d)(* 2 a)) )) 
	(sqrt(- (* b b)(* 4 a c))) ))      
;Try using LET
(define(roots a b c)
	(let ((d (sqrt (- (* b b) (* 4 a c)))) ; binding let d be that sqrt equation
		(list (/ (+ ) (- b) d) (* 2 a))
			  (/ (- ) (- b) d) (* 2 a )) )))

```
<code>LET</code> Conditional
```scheme
(let <bindings> <body>)
	; <bindings> <bindings> <bindings> ....
		;(<name> <value-expression>)
```
```scheme
;MORE OPTIMAZTION
(define (roots a b c)
	(let ((d (sqrt (- (* b b) (* 4 a c))))
		  (-b (- b)) ; binding -b to (- b)
		  (2a (* 2 a))) ;binding 2a to (*2a)
	  (list(/ (+ -b d) 2a)
	       (/ (- -b d) 2a)))
	       
(let* ((<binndingA> (<body which uses bindingB>)
	   (<bindingB> (<body>) ))
``` 
## Code Examples

## Exercises

## Key Ideas
think about keeping procedures and variable out of the global scope. These are ways to keep your program functioning the way it should even with changes
## Quotes

## Links

[[]]

---

