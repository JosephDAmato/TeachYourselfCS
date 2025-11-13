### World Program
#world
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

### BST Data Template
#binary_tree #binary_search #binary-tree-recursion #binary-tree-methods #Binary_data_template

```scheme

;; bst-dd-starter.rkt

; 
; PROBLEM:
; 
; Design a data definition to represent binary search trees. As a reminder,
; here is one example BST:
; 
; .

(define-struct node (key val l r))
;; BST (Binary Search Tree) is one of:
;;  - false (no node)
;;  - (make-node Integer String BST BST)
;;  Interp. false meanse no BST or empty BST
;;          key is the node key
;;          val is the value of the node
;;          l and r are the nodes to the left and right subtrees

;; INVARIANT: for a given node:
;;       key is > in its l(eft)  child
;;       key is < in its r(ight) child
;;       the same key never appears twice in the tree

(define BST0 false)
(define BST1 (make-node 1 "abc" false false))
(define BST4 (make-node 4 "dcj" false (make-node 7 "ruf" false false)))
(define BST3 (make-node 3 "ilk" BST1 BST4))
(define BST14 (make-node 14 "olp" false false))
(define BST50 (make-node 50 "dug" false false))
(define BST42 (make-node 42 "ily" (make-node 27 "wit" BST14 false) BST50))
(define BST10 (make-node 10 "why" BST3 BST42))


(define (fn-for-bst t)
  (cond [(false? t)(...)]
        [else
         (...(node-key t)   ; Int
             (node-val t)   ; Str
             (fn-for-bst (node-l t))     ; BST w/ natural recur
             (fn-for-bst (node-r t)))]))  ; BST w/ natural recur
;;Template Rules used
;;  - one of:   2 cases
;;  - atomic:   distinct false
;;  - compound: (make-node int string val l r)
;   - self ref: (node-l) has type BST
;;  - self ref: (node-r) has type BST
```