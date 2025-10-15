### Building Abstractions with Data

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]

---

### 2.0 Intro/Expectations 
## Notes
- A look at mroe complex data
	- model complex phenomena
	- **COMPOUND DATA**
		- combining data objects to build abstractions
		- We use several functions in abstraction to figure out square roots, we can use complex data structures together to abstract out vector points on a Cartesian chart 
- ###### we will discover how to form compound data using no special “data” operations at all, *only procedures*.
- CLOSURE: 
	  the property of a system where the operations used to combine data can be applied not only to simple (primitive) elements, but also to the results of those combinations—i.e., **compound elements**. This means the system is ***closed under composition**:* the "glue" that binds data pieces works recursively, allowing us to build complex structures from simpler ones without changing the rules.
	- *conventional interfaces
		- way of combining program modules
	- a _compound data object_
		- Think a rational number comprised of a numerator and denominator
	- symbolic expressions
		- Occam's Razor w/ data???
		- data whose elementary parts can be arbitrary symbols rather than only numbers.
	- generic operations
		- operating on different types of data but for the same thing
	- data-directed programming
		- ??????
	- addictively
		- without modifcation
		- 

### 2.1 Introduction to Data Abstraction

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP #abstraction #data

[[TYCS/1. Programming/README|README]]

---
## Notes
- The interface within out data abstraction system
	- selectors
		- **Selectors** are procedures that extract (select) the constituent parts from compound data objects. They retrieve components from data structures
		- <code>(numer x)  (denom x)</code> examples of an "idea" of a procedure that would extract the numer and denom from a fraction
	- constructors
		- **Constructors** are procedures that create (construct) compound data objects from their constituent parts. They build up data structures.
		- <code>( make-rat n d ) </code> example of a procedure that makes a rational number out of two parts

---

### 2.1.1 Example: Arithmetic Operations for Rational Numbers

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP #Rational-Numbers
[[TYCS/1. Programming/README|README]]

---
## Notes
- Lets assume the constructor and selectors are available as procedures
	- <code>(make-rat  n d )</code>
		- returns a rational number comprosied of integers for n and d
	- <code>(numer x)</code> 
		- returns numerator of rational number x
	- <code>(denom x)</code>
		- returns the denominator of the rational number x
- WITH THESE WE CAN EXPRESS RULES AS PROCEDURES
```scheme
;; The procedure to add to rational numbers
(define (add-rat x y)
	(make-rat (+ (* (numer x) (denom y))
				 (* (numer y) (denom x)))
			  (* (deonm x) (denom y)) ) )
;; The procedure to subtract to rational numbers
(define (add-rat x y)
	(make-rat (- (* (numer x) (denom y))
				 (* (numer y) (denom x)))
			  (* (deonm x) (denom y)) ) )
;; The Procedure to mul to Rational Numbers
(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))
;; The Procedure to divide to rational numbers
(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))
;; The Procedure to test for equality
(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))
```
- Without ever defining how make-rat or numer denom work, we can abstract out how that data would present itself and create procedures that work off of it.

#### PAIRS
- compound structure in LISP
- construct with <code> con </code>
	- access parts w/ <code> car cdr </code> respectively 
```scheme
(define x (cons 1 2) )
(define y (cons 3 4) )
(define z (cons x y) ) ; constructed from pairs is list-structured
(car x)
; 1
(cdr x)
; 2
;DEEPER NESTING OF PAIS
(car (car z) )
;;evalues: (car x) => 1
(car (cdr z) ); => (car y) => 3
```
- Now that we know about pairs we can construct our make rat and numer and denom procedures
```scheme
(define (make-rat n d) (cons n d) )
(define (numer x) (car x) )
(define (denom x) (cdr x) )
;; along with a print function
(define (print-rat x)
	(newline)
	(display (numer x))
	(display "/")
	(display (denom x)) )
```

---
### 2.1.3 What is meant by Data

**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP #data 
[[TYCS/1. Programming/README|README]]

---
## Notes
What exactly is meant by data?
- Is it what is implemented by selectors and constructors? 
- is it the specific condition that these procedures must fulfill to be ==="A VALID REPESENTATION?===
	- example us were never said what a pair/ cons/ car/ cdr was just what the LANGUAGE REPRESENTS
	- We could EVEN IMPLENT THIS ON OUR OWN IF WE NEEDED TO exampl...
```scheme
(define (cons x y)
  (define (dispatch m);;<= esstentially a lambda that gets invoked when car 
    (cond ((= m 0) x) ;; or cdr is called on a defined pair
          ((= m 1) y)
          (else 
           (error "Argument not 0 or 1:
                   CONS" m))))
  dispatch)

(define (car z) (z 0))
(define (cdr z) (z 1))
```
- Its not like data is really stored, its a procedure that is returned.
- We use a procedure to extract a procedure

---

### 2.2 Heirachiacal Data and the Closure Property

Visual of Pairs
![[Pasted image 20251015143409.png]]
Pairs with Pairs or LIST STRUCUTRE

![[Pasted image 20251015143441.png]]
- This allows us to create  hierarchical structures
	- Structures made up of parts, that those parts are made up of parts themelves, so n and so on....
![[Pasted image 20251015143810.png]]
- the primative for the above is calls <code>list</code>
	- we could write instead <code>(list 1 2 3 4)</code>
- ### Procedures for work through lists
```scheme
; INDEXING
(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) 
                (- n 1))))

(define squares 
  (list 1 4 9 16 25))

(list-ref squares 3)
; 16

;; LENGTH
(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define odds
  (list 1 3 5 7))

(length odds)
;; 4

;;Append

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) 
            (append (cdr list1) 
                    list2))))

;;MApping
(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))

(map abs (list -10 2.5 -11.6 17)) ;apply the absolute primative to the list
;; (10 2.5 11.6 17)

(map (lambda (x) (* x x)) (list 1 2 3 4)) ;; defining  a lambda, sq the list
;;; (1 4 9 16)

```

---
### 2.2.2 Hierarchical Structures