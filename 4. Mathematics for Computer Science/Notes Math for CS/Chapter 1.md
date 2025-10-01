### Mathematics for Computer Science
*2018, Eric Lehman, F Tom Leighton, [Albert R Meyer](http://people.csail.mit.edu/meyer). This work is available under the terms of the [Creative Commons Attribution-ShareAlike 3.0 license](http://creativecommons.org/licenses/by-sa/3.0/).*
##### Hashtags
#MATH 
[[TYCS/4. Mathematics for Computer Science/README|README]]
## 1 What is a Proof
---
## Notes
### * 1.1 Propositions*
- **Definition**. *A proposition is a statement (communication) that is either true or false.*
ex/ 2 + 3 = 5

**Claim 1.1.3** *For every nonnegative integer n the value of n^2 + n + 41 is prime*

lets notate this as
*p(n) :: = n^2 + n + 41
			- :: = means equal by defination

start with p( 0 ) = 41 which is prime
but at p( 40 )
*p(40) = 40^2 + 40 + 41* = 41 \* 41

so we say instead
![[Pasted image 20251001104148.png]]
which means for all the N (set of non neg integers) is a member of/ or belongs to/ or is in (that E) prime

What does this mean for CS
- we look to prove the correct of programs and systems

---
### 1.2 Predicates
- A predicate can be understood as a proposition whose truth depends on the value of one or more variables
- ex/ *n is a prefect square*
	- can't say its true or false until you know what the value of n happens to be
	- noted with **P(n) ::= '*n is a perfect square***
		- dont confuse with p(n) which could be a ordinary function and is numerical quantity

### 1.3 The Axiomatic Method

- **Axioms**: *Propositions accepted as true*
- **proof**: *is a sequence of logical deductions from axioms and previously proved statements that concludes with the proposition in question.*
- **Theorems**: True Propositions
- **Lemmna**: preliminary propositions useful for proving later propositions
- **Corallary**: proposition that follows in just a few locial steps for a theorem

### 1.4 Our Axioms
- We will accept all familiar facts from high school math
- Be upfront about what we are assuming

### 1.4.1 Logical Deductions

- inference rules: used to prove new propositions using previoulsy proved ones
- ###### Inference Rule
	- *MODUS PONENS*
	- a proof of P together with a proof that P *implies* Q is a proof of Q
![[Pasted image 20251001110535.png]]
- **Antecedents**: statement above that line
	- are proved
		- consider statement below (called *conclusion*)
	![[Pasted image 20251001110855.png]]

### 1.4.2 Patterns of Proof
"How do you even start a proof?"
- templates

### 1.5 Proving an Implication
- “If P, then Q” are called implications.
#### 1.5.1 Method 1 Scratch it Out
	1. write "Assume P"
	2. Show that Q logically follows
	3. example below
		If 0 <= x <= 2, then -x^3 + 4x + 1 > 0
		do the scratch work to see why it is true
		check the equality of the left side
			*0<= x <= 2 if x = 0*
		factor
			-x^3 + 4x = x(2 - x)(2 + x)
		We see that all terms on the right btw 0 2 are non neg ints

### 1.5.2 Method 2 Prove the Contrapositive
![[Pasted image 20251001112439.png]]
1. Write "We prove the contrapositive"
	1. Restate contrapositive
2. Proceed as in Method # 1
3. example
*If r is irrational then sqrt of r is also irrational*
*Proof* We prove the contrapositive: if sqrt *r* is reational, then r is rational.
	sqrt r = *m / n*
	 r = *m^2/n^2*
	 if m and n are rational integers then r is rational

### 1.6 Proving an "If and only If"
![[Pasted image 20251001120857.png]]
- if and only if: abv to "**iff**"

### 1.6.1 Method 1 Prove Each Statement Implies the Other
![[Pasted image 20251001121008.png]]

### 1.6.2 Method 2 Construct a CHain of IFFS

In order to prove that *P* is true iff *Q* is true

![[Pasted image 20251001121143.png]]

**EXAMPLE**
![[Pasted image 20251001121345.png]]

![[Pasted image 20251001121329.png]]


## Code Examples

## Exercises

## Key Ideas

## Quotes

## Links

[[]]

---

