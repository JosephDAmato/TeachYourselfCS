#### Formulating bstractions with Higher-Order Procedures
**Abelson & Sussman** • 1996 • Book
##### Hashtags
#SICP
[[TYCS/1. Programming/README|README]]

---
## Notes
#### 1.3.0 Into

- Build Abstractions by assigning names to patterns
- Procedures can accept other procedures as arguements
	-  ***Higher-Order Procedures***: the procedure that manipulates other procedures

#### 1.3.1 Procedures as Arguments
- consider the following
```scheme
(define (sum-int a b)
	(if (> a b)
		0
		(+ (sum-int (+ a 1) b))))
		;=======================
(define (sum-cubes a b)
	if (> a b)
		0
		(+ (cube a) (sum-cubes (+ a 1) b)))
		;=======================
(define (pi-sum ab)
	(if (> a b)
		0
		(+ (/ 1.0 (* a (+ a 2)))
			(pi-sum (+ a 4) b))))
```
- These three procedures share a simalar pattern
	- we check for equality
	- we compute some function on the numbers
	- we increment our variable
```scheme
;=== This is where abstraction shows its use ===
(define (<name> a b)
	(if (> a b)                     ; check euqality
		0                           ; True return
		(+ (<term>) a)              ; What functionality do we want to do with a?
			(<name> (<next> a) b))) ; Call our procedure again with desired incrmt
```
The above is an example of the mathematical conception of ***summation of a series*** 
![[Pasted image 20250930211456.png]]
## Code Examples

## Exercises

## Key Ideas

## Quotes

## Links

[[]]

---

