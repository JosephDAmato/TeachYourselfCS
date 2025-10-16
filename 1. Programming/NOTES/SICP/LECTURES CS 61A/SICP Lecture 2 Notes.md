[Lecture Link](https://archive.org/details/ucberkeley_webcast_TTK2lZoWbPQ)
9/19/15
##### Functional Programming

---
- Recursion will be important
- Programming paradigms. 
	- Looking at large chunks of a a larger project to hold it all in your head

Layers of Abstraction
- Application
- Higher level language (scheme)
- Low Level Language ( C - where is it in memory )
- Machine Language / architecture
- Logic Gates ( circuits that compute Boolean values )
- Transistors  ( remote controlled switch )
- Quantum Physics ( behavior of sub atomic particles )

```scheme
```

---
#### Procedure Processes WHATS A FUNCTION?
![[Pasted image 20250919154246.png]]
- Different steps can arrive at different intended results
	- if we eval (X + 3) last in g(x) it === f(x)
- a procedure is a process of steps for computing a function
	- ex Please Excuse My Dear Aunt Sally is a procedure 
---
### <code>COND</code>
```scheme
(cond ( clause clause clause ... .) (else action)); without else, it will return undefined on false for all cases
(cond ( ( test action ) ) 
	( ( test action ) )
	( ( test action ) )
	...)
	(else action)) ; this is clause
```
![[Pasted image 20250922111428.png]]

---
##### Applicative Order

```scheme
;create function
(define (f a b) 
	( + 
		( g a ) 
	b) 
)
(define (g x)
	(* 3 x )
)

;call function with arguements
(applic (f (+ 2 3) (- 15 6) ) ) ; this function steps in applicative order
; Below are the steps taken
(f (+ 2 3) ( - 15 6 ) ) ; sub expression for + and  - are read first
(f 5 9)
(+ (g 5) 9 ) ; now we subsitiute evalu'd sub expression into arguements of f
(+ (* 3 5) 9) ; again we evalu subexpression which is func g 
(+ 15 9 ) ; g evals to 15 and now we complete last expression
24 ; prints
```
- start sub expressions
- take those values THEN call the funtions and make subsitution
##### Normal Order
- starts with substituting arguemnts into their functions before evaluating 
```scheme
;create function
(define (f a b) 
	( + 
		( g a ) 
	b) 
)
(define (g x)
	(* 3 x )
)

;call function with arguements
(normal (f (+ 2 3) (- 15 6) ) ) ; this function steps in normal  order
; Below are the steps taken
(+ (g (+ 2 3) ) (- 15 6) ) ; we start by taking the arguemnt expresions and plug them into f
(+ (* 3 (+ 2 3)) (- 15 6) ) ; again before evaluating anything we take the arugement expression and plug it into func g
(+ ( * 3 5) 9) ; NOW we can evaluate all sub expressions
(+ 15 9)
24 ; prints
```

- same answer but what difference?
```scheme
  (define (zero z) ( - x x))
  (zero (random 10)) ; random 10 will give use a random whole nuber under 10
;====eval steps  applicatve======
(zero 8) ;arguemnent gets eval'd first
(- 8 8)
0
;=== eval steps in normal ======
(- (random 10) (random 10)) ; arguements get subbed first
(- 8 1)
7
  
  ```