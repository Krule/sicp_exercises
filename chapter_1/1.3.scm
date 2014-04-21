;
; Define a procedure that takes three numbers as arguments and returns a sum
; of the squares of the two larger numbers
;

(define (² x)
        (* x x))

(define (²sum a b)
        (+ (² a) (² b)))

(define (²sum-largest-two a b c)
  (cond ((and (<= a b) (<= a c)) (²sum b c))
        ((<= b c) (²sum a c))
        (else (²sum a b))))
