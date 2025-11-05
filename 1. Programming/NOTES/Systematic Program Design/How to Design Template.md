```scheme

(require 2htdp/image)
(require 2htdp/universe)

;; My world program  (make this more specific)

;; =================
;; Constants:
(define WIDTH 900)
(define HEIGHT 700)
(define SCENE (rectangle WIDTH HEIGHT "solid" "aliceblue"))
SCENE

;; =================
;; Data definitions:


;; (define WS ())
;; WS is ... (give WS a better name)
;; Interp.....
;; (define example (WS example))

;; (define (fn-for-ws ws)...)
;; Template Rules Used


;; =================
;; Functions:

;; WS -> WS
;; start the world with ...
;; 
(define (main ws)
  (big-bang ws                   ; WS
            (on-tick   tock)     ; WS -> WS
            (to-draw   render)   ; WS -> Image
            (stop-when ...)      ; WS -> Boolean
            (on-mouse  ...)      ; WS Integer Integer MouseEvent -> WS
            (on-key    ...)))    ; WS KeyEvent -> WS

;; WS -> WS
;; produce the next ...
;; !!! &Tests
(define (tock ws) ...) ;; STUB

;; Function Template from ABOVE


;; WS -> Image
;; render ... 
;; !!! &Tests
(define (render ws) ...) ;; STUB
;; Function Template from ABOVE

```