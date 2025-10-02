#p1 #p2 #bsl

### **ps3*
- [tile-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/tile-starter.rkt "tile-starter.rkt")
- [tile-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/tile-solution.rkt "tile-solution.rkt")
- _ had some fun used dif colors_
Create an image using image composition primitives.
```LISP
(require 2htdp/image)

;; tile-starter.rkt

; 
; PROBLEM:
; 
; Use the DrRacket square, beside and above functions to create an image like this one:
; 
; .
; 
; If you prefer to be more creative feel free to do so. You can use other DrRacket image 
; functions to make a more interesting or more attractive image.
; 


(above(beside(rectangle 150  'solid' cornflowerblue)
       (rectangle 150  'solid'  pink))
(beside(rectangle 150  'solid' coral)
       (rectangle 150  'solid' aliceblue)))
```
![[Pasted image 20250602211637.png]]
### p4
Write expressions to operate on strings using primitives.
- [glue-starter.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/glue-starter.rkt "glue-starter.rkt")
- [glue-solution.rkt](https://s3.amazonaws.com/edx-course-spdx-kiczales/HTC/glue-solution.rkt "glue-solution.rkt")
```LISP

;; glue-starter.rkt

; 
; PROBLEM:
; 
; Write an expression that sticks the strings "Super" "Glue" together into a single string 
; "Super Glue" with a space between the two words.
; 


(string-append "Super" " " "Glue") ; add space between or you get SuperGlue
```