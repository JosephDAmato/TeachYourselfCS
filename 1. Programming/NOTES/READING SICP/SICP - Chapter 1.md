### 1.0 Building Abstractions with Procedures

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]
---
## Notes
*Vocab*
**computational process**: abstract beings taht inhabit computers
***data***: abstract things that get manipulated by processes
***program**:* things that direct processes
**interpreter**: a machine that carries out processes described in a language

LISP
- **LIS***t* **P***rocessing*
- invented in the 50's
- uses recursion equations as a model for computation
- LISP processes themselves can be manipulated as data
- This book will uses SCHEME 

---
### 1.1 The Elements of Programming

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP #LISP
[[TYCS/1. Programming/README|README]]

---
## Notes
*VOCAB*
**primitive expressions**: represent the simplest entities that language is concerned with
**means of combination:** by which compound elements are built from simpler ones
**means of abstraction**: by which compound elements can be named and manipulated as units
**combinations**: delimiting a list of expressions within a parentheses in order to denote proxedure application (THINK Please Excuse My Dear Aunt Sally in math) ex/ (+ 1 2) = 1 + 2
	- **operator**: leftmost element in the list
		- **prefix notation**
	- **operands**: elements after the operator
	- **arugments**: values of the operands
**REPL:** Read - Eval - Print Loop
**EXPRESSIONS**
```scheme
;present LISP w/ a number 
486
;and
; the interreter will respond by printing it
; create a compound expression that represents a procedure on those numbers
(+ 137 349)
; outputs 486
; ======= NESTINNG ======
(+ (- 2 1) (- 3 1))
; evaluates to step by step
(+ (-2 1) 2)
(+ 1 2)
3
; === Complex nesting can be written as such ===
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))
; can be
(+(* 3 
	(+ (* 2 4)
	    (+ 3 5)))
	(+ ( --10 7)
		6))
; The interpreter always operates in the same basic cycle
; read-eval-print loop
```

---
### 1.1.2 Naming and the Environment

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]

---
## Notes
**defining:** a name identifying a variable whole value is the object

```scheme
; defining a varaible
(define size 2)
; the value of 2 will be associated with size
(* 5 size)
; Prints 10
; === Example defining a circle ===
(define pi 3.14159)
(define radius 10)
(* pi(* radius radius)) ;area of a circle
; 314.149
(define circumference (* 2 pi radius)) ; function that computes circumference
;62.8318 
```
**environment**: memory that keeps track of the associated values and their symbols

---
#### 1.1.3 Evaluating Comnimations

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]

---
## Notes
- ISOLATE ISSUES ABOUT THINKING PROCEDURALLY
	- to eval a combination
		- 1. eval the sub expressions (+ 1 ( -1 2 ; this is the sub))
		- 2. Apply prcedure that is the value to the left most operator to the arguements
	- These rules are recursive in nature
	- example
```scheme
(* (+ 2 (* 4 6)) (+ 3 5 7))
;=== Nested below
(* (+ 2 
	(* 4 6 ))
	( + 3 5 7)
)
;=== steps into
(* (+ 2 24)
	15)
;=== steps into
(* 26 15)
;=== Prints
390
```
![[Pasted image 20250916122444.png]]
- Notice the  tree like structure.  Each combo is represented by a node with branches stemming out to represent the operator and operands
- the values percolate up
- this is a process known as **tree accumulation**

---
#### 1.1.4 Compound Procedures

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]

---
## Notes
**Procedure definitions**: abstraction technique by which a compound operation can be given a name and then referred to as a unit
**COMPOUND PROCEDURE:** 
```scheme
; Express the idea of sqauring
; " To square something , multiply it by itself"
(define (sqaure x) (* x x))
```
![[Pasted image 20250916123300.png]]
The General Form of a PROCEDURE DEFINATION:
![[Pasted image 20250916123510.png]]
- We can extrapolate further and create more abstraction with more primative procedures:
- ![[Pasted image 20250917110405.png]]*Quadratic equation*

---

#### 1.1.5 The Substitution Model for Procedure

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]

---
## Notes
**SUBSTITUTION MODEL**: 1. To apply a compound procedure to arguments, 2. evaluate the body of the procedure with each formal parameter replaced by the corresponding argument. The process that determines the meaning of a procedure application
- In LISP here we are evaluating the left most value first, the OPERATOR wither it is a primitive ( + - * /) or a defined function and then substitute our arguments into the formal body
- This is not how an interpreter works typically, BUT a why for human minds to visual
**NORMAL-ORDER EVALUATION*:* Breaks down the procedure to its bare primatives
**APPLICATIVE-ORDER EVALUATION:**Evaluate the arguments and then apply

---
#### 1.1.6 Conditional Expressions and Predicates

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]

---
## Notes
**CASE ANALYSIS**: Testing and preforming different operations depending upon that test
- CONDITIONALS
```scheme
;condtionals
;cond
(define (abs x)
	(cond ((> x 0) x)
	      ((= x 0) 0)
	      ((< x 0) (- x)))
```
![[Pasted image 20250917112432.png]]
- the pairs are called CLAUSES
	- *p*: predicate
		- an expression whose value is interpreted as either true or false
		- each p will be eavl'd till one is TRUE
	- *e*: consequent expression
		- return value if TRUE
		- if NONE are true returns UNDEFINED
	- <code>(*else*  e)</code> : can be used to break out if no statement is true
	**IF STATEMENT**
```scheme
;If statement
(define (abs x)
	( if (< x 0) ; of x is less than 0
		  (- x)  ; x is negative x
		  x))    ; if not, return x
```
![[Pasted image 20250917113313.png]]
**Logical Composition Operations**
```scheme
(and <e1> ... <en>) 
; from left to right one at a time
; breaks out at the first false
;EXAMPLE
(and (> x 5) (< x 10))
;=====
(or <e1> ... <en>)
; if any eval to true that first value is returned
; if all are false, the value is false
;example
(define(>= x y)
	(or (>x y) (=x y)))
;=====
(not <e>)
;evlautes to TRUE when if is false and False otherwise
;EXAMPLE
(define (>= x y)
	(not (< x y)))

```
## Exercises
##### 1.1 
Below is a sequence of expressions. What is the result printed by the interpreter in response to each expression? Assume that the sequence is to be evaluated in the order in which it is presented.
![[Pasted image 20250917114136.png]]
```scheme
10 ; 10
(+ 5 3 4) ;12
(- 9 1) ; 8
(/ 6 2) ; 3
(+ (* 2 4) (- 4 6)) ;6
(define a 3) ; 3
(define b (+ a 1)) ;(+ 3 1)
(+ a b (* a b)) ;19
(= a b) ;false
(if
 (and (> b a) (< b (* a b))) ;(and ( true ) (< true)
    b ; 4 this is the eval
    a) ;1 this is skipped

(cond ((= a 4) 6)        ; ((= 3 4) 6) false, 6 is skipped as answer
      ((= b 4) (+ 6 7 a)); ((= 4 4) 16) true, answer 16 
      (else 25))         ; (else 25)  this is skipped
(+ 2 (if (> b a) b a)) ; (+ 2 (if (> true) 4 3)) becomes (+ 2 4) 'a' was the false return
(* (cond ((> a b) a) ; (* (cond ((> 3 4) 3)false, skip 3
         ((< a b) b) ;          ((< 3 4) 4) true, return 4
         (else -1))  ;          (else -1 )) skipped
   (+ a 1))          ;     (+ 3 1))        becomes 4
                     ; entire statment reduced to (* 4 4) or 16
```
**Exercise 1.2:** Translate the following expression into prefix form:
![[Pasted image 20250917120902.png]]
```scheme
;Exercise 1.2
(/
 (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
  (* 3 (- 6 2)(- 2 7))
 )
```

**Exercise 1.3:** Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.
```scheme
;* I need help with this one*
; Create our firrst procedure to square numbers
(define (square x) (* x x))

; using our square function, run a cond to check for smallest number
(define (sum-of-squares x y z)
  (cond
    [(and (<= x y) (<= x z)) (+ (square y) (square z))] ; x is smallest
    [(and (<= y x) (<= y z)) (+ (square x) (square z))] ; y is smallest
    [else (+ (square x) (square y))]))                  ; z is smallest

(sum-of-squares 9 2 4)
```

Exercise 1.4
Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:
```scheme

(define (a-plus-abs-b a b) ;names a function that takes a b as placeholders for the arguements
  ((if (> b 0) + -) a b))  ;runs a logic check if b is neg, and returns a value in the operater place
```
Exercise 1.5 
Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:
```scheme
(define (p) (p)) ; this calls itself infinitely
(define (test x y)
  (if (= x 0)
      0
      y))
(test 0 (p))
; Hangs forever → Applicative-order, begins by evaluating the arguments
; Returns 0 → Normal-order, begins by filling out the test function line by line
```

---
#### 1.1.7 Example: Square Roots by Newton's Method

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]

---
## Notes
- From my own experience this looks like the first look at recursion calling something over and over again until it reaches some threshold estimate
###### **declarative knowledge**:
- Describes _what_ you want to achieve without specifying _how_ to achieve it. You declare the desired outcome or relationships, and the system figures out the execution.
**Characteristics**:
- Focus on the end result or logical relationships
- No explicit control flow or step-by-step instructions
- Often more abstract and mathematical
- The "what" without the "how"
###### **imperative knowledge**
- Describes _how_ to achieve something through explicit step-by-step instructions. You command the computer to perform specific actions in a specific order.
**Characteristics**:
- Focus on the process and control flow
- Explicit sequences of commands
- Manages state changes directly
- The "how" with specific steps

###### Iteration through Recursion
- The Newton-Rapson method (see python example [[approximation algorithm]]) gives us a recursive program in lisp that is capable of looping over itself without explicitly calling a loop.
	- We declare that out number must be greater than zero but less than or equal to the sqrt of the number we are using
	- We describe imperatively the steps of picking a number to guess
		- checking if the number is within our **declared** tolerance for a correct answer
		- if it is...WIN we found it
		- If not, we have steps to improve the guess depending if we are above or below our tolerance
	- We can repeat these steps indefinably until we reach our answer
- Computing Square roots with Newtons Method of successive approximations 
```scheme
(define (sqrt-inter guess x); we define a function that takes a guess and the number we are looking for
	(if (good-enough? guess x); using another function we check its tolerance
		guess                 ; if true we return our guess as answer
		(sqrt-inter (improve guess x ) x))) ;if FALSE, we run our function again but call improve on our first arguement and pass our guess and the number we are working on.
		;==== HELPING FUNCTIONS=====
; Not only do these allow us to manipulate the data within our program to approach a correct answer, but they allow layers of abstration, creating functional functions ( ? i guess that sounds good ? )
(define (improve guess x)
	(average guess (/ x guess)))
(define (average x y)
	(/ (+ x y) 2))
(define (good-enough? guess x)
	(<(abs (- (sqaure guess) x)) 0.001))
; This servres as our entry function into all this fun
(define (sqrt x)
	(sqrt-inter 1.0 x) )
	
(sqrt 16)
; PRINTS 4
```
## Exercises
#### Exercise 1.6:
Alyssa P. Hacker doesn’t see why `if` needs to be provided as a special form. “Why can’t I just define it as an ordinary procedure in terms of `cond`?” she asks. Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she defines a new version of `if`:
```scheme
(define (new-if predicate
				then-clause
				else-clause)
	cond (predicate then-clause)
		(else else-clause)))
; EVA DEMOS the program
(new-if(= 2 3) 0 5)
;5
(new-if (= 1 1) 0 5)
;0
; Delighted Alyssa uses new-if to rewrite the sqrt program
(define (sqrt-inter guess x)
	(new-if(good-enough? guess x)          ;predicate
		guess                              ;then clause True
		(sqrt-inter (improve guess x) x))) ;else clause Otherwise
```
- ##### What happens when Alyssa attempts to use this to compute square roots? Explain.
	- I think this might depend on the evaluation process. The arguments of the conditional are going to be evaluated and during the else clause being evaluated we will enter an infinite loop as it will begin recursively calling itself and never evaluate for a true/false. It till continue to evaluate all the parameters because of applicative processing. We will continue to call sqrt-inter in the else clause and start all over again.
	  
- ###### **Exercise 1.7:** 
	- The `good-enough?` test used in computing square roots will not be very effective for finding the square roots of very small numbers. Also, in real computers, arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers. Explain these statements, with examples showing how the test fails for small and large numbers. An alternative strategy for implementing `good-enough?` is to watch how `guess` changes from one iteration to the next and to stop when the change is a very small fraction of the guess. Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?
		- This has to due to byte size the the limit length of ints a computer can strore. We will either have floating point errors with small numbers or reach our byte size with larger numbers
```scheme
(define (sq-rt guess prev-guess x)(
	(if(good-enough(guess prev-gues x)
		guess
		(sq-rt (improve guess x)))))))
(define (good-enough guess prev-guess x)
	())
????????????????????????????????????????????????????????????????????????????????????
```

- ###### **Exercise 1.8:** 
	- Newton’s method for cube roots is based on the fact that if y is an approximation to the cube root of x, then a better approximation is given by the value

			x/y2+2y3.

	- Use this formula to implement a cube-root procedure analogous to the square-root procedure. (In [1.3.4](https://sarabander.github.io/sicp/html/1_002e3.xhtml#g_t1_002e3_002e4) we will see how to implement Newton’s method in general as an abstraction of these square-root and cube-root procedures.)
```scheme
#lang sicp
(define (cube-inter guess x)         ;Takes a guess and a inter to find the cube-rt of
	(if (good-enough-cubed? guess x) ;Checks if our guess is right( True or False )
		guess                        ;True Clause
                (cube-inter (improve-cubed guess x) x)));False Clause Recursion Call
(define (good-enough-cubed? x y)
	(<(abs(- (* x x x) y)) 0.001))
(define (improve-cubed guess x)
  (/ (+ ( * 2 guess)(/ x (* guess guess))) 3))
  

(define(cubed-rt x)
  (cube-inter 1.0 x) )

(cubed-rt 8)```


---

#### 1.18 Procedures as Block-Box Abstractions
**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]

---
## Notes
- _recursive_; that is, the procedure is defined in terms of itself.
- Our Recursive Sqrt problem shows how a problem can be broken into sub problems
	- How to tell whether a guess is good
	- How to improve a guess
	- when to break
	- ![[Pasted image 20250923135806.png]]
- ##### We can call this DECOMPOSITION STRATEGY 
- ##### procedural abstraction
	- an underlaying procedure which the steps an not directly specified but implied 
	- a black box if you may
- #### Scope
	- Parameters are scoped locally to their function and body
		- **BOUND VAIRABLE**: they only have meaning within their scope
		- FREE VARIABLES: EXAMPLE
			-  **Bound:** `guess`, `x` (defined as parameters)
			- **Free:** `good-enough-cubed?`, `improve-cubed` (defined elsewhere, not parameters)
	- In our prior examples of working on sqrt, we define the aux functions AFTER our guess and then create an entry function
		- like in other languages, it is better to structure this within one single block. 
		- Methods on top, actionable or returning function on the bottom.
```scheme
(define (sqrt x)                         ; Define our function
	(define (good-enough? guess)       ; helper / Method
		(< (- (* guess guess) x) 0.001)) 
	(define (improve guess)            ; Helper / Method
		(average guess (/ x guess))
	(define (sq-int guess)             ; Helper / method
		(if (good-enough? guess)
			guess
			(sq-int (improve guess))))
	(sq-int 1.0))                      ;Call to Action 
	; All data remains within the scope of sqrt so other functions can be defined as improve or good-enough? or average and function differently then the ones within here. All we are concerned with is that sqrt does work to get the sqaure root. All other functions are gears within its black box and should only influence sqrt and nothing else.
```
- ##### Lexical Scoping
	- determined by where it appears in the code
	- Noticed how we were able to remove x from all the arguements and only needed guess. 
	- x was already defined within sqrt and could be passed in since it was already locally scoped
## Code Examples

## Exercises

## Key Ideas

## Quotes

## Links

[[]]

---





