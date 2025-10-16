### Lecture 3 - Higher Order Procedures
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]
[3: Higher-order Procedures](https://archive.org/details/ucberkeley_webcast_ogIGxEzvnSE) Video

---
## Notes
### YOUR BRAIN
![[Pasted image 20250926144248.png]]
- This wall needs to be broken down
- - Procedures as datas we will build up to

- ###### Big Ideas
	- Functions as Data
	- First Class Data Types
- ###### Generalizing Patterns
```scheme 
; OG Style
; We need seperate functions to calcualte each area.
(define (area-circle r) 
		(* pi r r))
(define (sqaure-area r)
		(* r r))
(define (sphere-area r)
		(* 4 pi r r))
(define (hexagon-area r) 
		(* (sqart 3) 1.5 r r))
(area-circle 5)
(* pi 5 5)
78.5398
; But look at what is the same in them. How can we condesnse this
; Updated More refined way
(define (area shape r)
		(* shape r r));We add an agruement (shape) that is a function as an param
					  ;WHATS DIFFERENT FROM ONE PATTERN FROM ANOTHER??   
(define sqaure 1)
(define circle pi)
(define sphere (* 4 pi r))
(define hexagon (* (sqrt 3) 1.5))

(area circle 5)
(* circle 5 5)
(* pi 5 5) ; (pi r^2)
78.5398
```

#### Recursive Summing Squares
```scheme
(define (sumsquare a b)
	(if (> a b) ; Base case/ Break Case
		0
		(+(* a a) (sumsquare (+ a 1) b)))) ; We add the sqaure of each call til breaks
(sumsquare 3 5)
(+(* 3 3) (sumsqaure (+a 1) 5))
(+(* 3 3) (sumsquare 4 5))
(+(* 3 3) (+ (* 4 4) sumesqaure( 5 5))
(+(* 3 3) (+ (* 4 4) (+ (* 5 5) sumsquare(6 5)))
(+(* 3 3) (+ (* 4 4) (+ 25 0))
(+(* 3 3) (+ (* 4 4) 25)
(+(* 3 3) (+ 16 25))
(+(* 3 3) 41)
(+ 9 41)
50
; Cube version is simalar
(define (cubesquare a b)
	(if (> a b) ; Base case/ Break Case
		0
		(+ (* a a a) (cubesquare (+ a 1) b))))
```
How do you capture these two where the main functionality differs?
```scheme
(define (sum FN a b) ; The SUM OF SOME FUNCTION TAKING NUMBERS FROM A to B.
	if (> a b)
		0
		(+ (FN a) (sum FN (+ a 1) b)))
(define (square x) (* x x))
(define (cube x) (* x x x))
(sum square 3 5)
(sum cube 3 5)
```
- #### Higher Order Procedures take a procedure as an arg or return a procedure as its value 
### Lambda
" The Function ax + b"
x - > ax + b
   -> yx + z
y -> xy + x
- it can map differently
- 
## Code Examples

## Exercises

## Key Ideas

## Quotes

## Links

[[]]

---

