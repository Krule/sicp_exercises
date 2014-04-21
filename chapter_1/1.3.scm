;
; Define a procedure that takes three numbers as arguments and
; returns a sum of the squares of the two larger numbers
;

(define (² x)
        (* x x))

(define (²sum a b)
        (+ (² a) (² b)))

(define (²sum-largest-two a b c)
  (cond ((and (<= a b) (<= a c)) (²sum b c))
        ((<= b c) (²sum a c))
        (else (²sum a b))))

(²sum-largest-two 1 2 3); 13
(²sum-largest-two 3 2 1); 13
(²sum-largest-two 3 1 2); 13
(²sum-largest-two 2 3 1); 13
(²sum-largest-two 1 3 2); 13
(²sum-largest-two 1 3 2); 13
(²sum-largest-two 2 2 1);  8
(²sum-largest-two 1 2 2);  8
(²sum-largest-two 2 2 2);  8
