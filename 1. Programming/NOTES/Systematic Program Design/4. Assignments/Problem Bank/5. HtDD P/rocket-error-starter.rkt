;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname rocket-error-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;(require spd/tags)

;@assignment htdd-p7)
;(@csid ??? ???)

;@problem 1)
;; Consider the following data definition from the Rocket practice problem.
;;
;; We have designed a function has-landed?, but there are errors in the function
;; design. Uncomment the program below, and make the minimal changes possible to
;; a) make this program work properly and b) make the function design
;; consistent.


;;; =================
;;; Data Definitions: 
;
;(@htdd RocketDescent)
;;; RocketDescent is one of:
;;; - Natural (0, 100]
;;; - false
;;; interp. false if rocket's descent has ended, otherwise number of kilometers
;;;         left to Earth, restricted to (0, 100]
(define RD1 100)
(define RD2 40)
(define RD3 0.5)
(define RD4 false)
;
; template rules used:
;; one of 2 cases:
;   - atomic-non-distinct ;Natural (0, 100]
;   - atomic-distinct     ;false
#;
(define (fn-for-rocket-descent rd)
  (cond [(and
          (number? rd)
          (> rd 0)
          (<= rd 100))
         (... rd)]
        [else  (...)])) 



;;; =================
;;; Functions:
;
;(@htdf has-landed?)
;  RocketDescent -> String
;  Produce "The Rocket has landed!" if rocket's descent has ended else KM to earth in string format
(check-expect (has-landed 100) "100km")
(check-expect (has-landed 23) "23km")
(check-expect (has-landed 0.25) "1/4km")
(check-expect (has-landed false) "The rocket has landed!")
;
;(define (has-landed? r) r) ; stub
;
;(@template RocketDescent)
;
(define (has-landed rd)
  (cond [(and
          (number? rd)
          (> rd 0)
          (<= rd 100))
         (string-append (number->string rd) "km")]
        [else  "The rocket has landed!"])) 