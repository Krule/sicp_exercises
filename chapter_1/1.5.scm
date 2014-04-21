;
; # Question #
;
; Ben Bitdiddle has invented a test to determine whether the interpreter he is
; faced with is using applicative-order evaluation or normal-order evaluation.
; He defines the following two procedures:
;

(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

; Then he evaluates the expression

(test 0 (p))

; What behavior will Ben observe with an interpreter that uses
; applicative-order evaluation? What behavior will he observe with an
; interpreter that uses normal-order evaluation? Explain your answer. (Assume
; that the evaluation rule for the special form `if` is the same whether the
; interpreter is using normal or applicative order: The predicate expression
; is evaluated first, and the result determines whether to evaluate the
; consequent or the alternative expression.)


; # ANSWER #
;
; ## Part 1 ##
;
; In applicative-order evaluation, evaluate operands

(test 0 (p))

; Since second operand is a combination which recursively calls itself ad
; infinitum evaluation does not terminate beyond this point

; ## Part 2 ##
;
; In normal-order evaluation, interpreter will expand `(test 0 (p))` to:

(if (= x 0) 0 y))

; Evaluating arguments predicate arguments first, expanding it:

(if (= 0 0) 0 y

; and then reducing predicate argument:

(if true 0 (p))

; Since `if` predicate expression is true, result is 0 and there is no need to
; evaluate alternative expression

