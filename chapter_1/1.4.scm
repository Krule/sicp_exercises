;
; # Question #
;
; Observe that our model of evaluation allows for combinations whose operators
; are compound expressions. Use this observation to describe the behavior of
; the following procedure:
;

   (define (a-plus-abs-b a b)
     ((if (> b 0) + -) a b))

; # ANSWER #
;
; If b is greater than 0, apply '+' to the operands. Otherwise apply '-'.
;
; In Ruby this is written similar to:
;
;    def a_plus_abs_b(a, b)
;      a.send(b > 0 ? :+ : :-, b)
;    end
;