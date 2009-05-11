

(define (max-number lis)
  (define (pick-generator a b)
    (if (> a b) a b))
  (if (null? lis)
      (error "max-number needs at least one number")
      (fold pick-generator (car lis)(cdr lis))))
