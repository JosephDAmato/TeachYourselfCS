;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname arrange-strings) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; CONSTANTS
(define BLANK (rectangle 0 0 "solid" "white"))

;; ListOfStrings
;; is one of:
;;  - empty
;;  - (cons String ListOfString)

(define LOS0 empty)
(define LOS1 (cons "Hello" empty))
(define LOS2 (cons "User" (cons"Prints:"(cons "World" (cons "Hello" empty)))))

;; Template Rules:
;;  - One of 2 cases
;;  - Atomic Distinct (empty)
;;  - self-ref (rest ListOfString)
;;  - ref (fist ListOfString)

#;
(define (fn-for-los los)
  (cond [(empty? los) (..)]
        [else
         (...(first los)
             (fn-for-los (rest los)))]
        ))

;; FUNCTIONS

;; ListOfStrings -> image
;; Take in a list of strings and output them vertically in alphabetical order
;;
(check-expect (arrange-strings LOS0) BLANK)
(check-expect (arrange-strings LOS2) (above/align "left"
                                                  (text "Hello" 26 "white")
                                                  (text "World" 26 "white")
                                                  BLANK
                                                 ))
;; (define (arrange-strings los) BLANK) ;Stub

(define (arrange-strings los)
  (draw-image (alpha-sort los)))

;; LOS -> LOS
;; Returns a LOS in alphabetical order
;;

;;(define(alpha-sort los) los) ;stub

(define( alpha-sort los)
    (cond [(empty? los) empty]
        [else
         (insert (first los)(alpha-sort (rest los)))]
        ))
;; (alpha-sort (cons "c" (cons "b" (cons "a" empty))))
;; cond [empty? los) no
;; (insert ("c")( alpha-sort ((cons "b" (cons "a" empty))))
;; (insert ("c") (insert ("b") (insert "a" empty) 


;; LOS -> Image
;; Takes in a ListOfStrings and places them vertically
;;

;; (define(draw-image los) BLANK) ;; Stube

(define (draw-image los)
 (cond [(empty? los) BLANK]
        [else
         (above/align "left"(text (first los) 26 "white")
             (arrange-strings (rest los)))]
        ))
;; string LOS -> LOS
;; takes in a LOS and outputs it in alphabetical order

(define (insert s los)
  (cond [(empty? los) (cons s empty)]
        {else
         (if (string>=? s (first los))
             (cons (first los)
                   (insert s (rest los)))
            (cons s los))}
        ))


