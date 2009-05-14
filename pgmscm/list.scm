(define (last-pair lis)
  (if (pair? (cdr lis))
      (last-pair (cdr lis))
      lis))

(define (copy-list lis)
  (if (pair? lis)
      (cons (car lis) (copy-list (cdr lis)))
      lis))

(define (deep-copy-list lis)
  (if (and (pair? lis) (list? (car lis)))
      (cons (copy-list (car lis)) (deep-copy-list (cdr lis)))
      lis))


(define (append2 a b)
  (if (pair? a)
      (cons (car a) (append2 (cdr a) b))
      b))

(define (reverse lis)
  (if (null? (cdr lis))
      lis
      (append2 (reverse (cdr lis)) (list (car lis)))))

#;
(define (find pred lis)
  (if (null? lis)
      #f
      (if (pred (car lis))
	  (car lis)
	  (find pred (cdr lis)))))

#;
(define (find pred lis)
  (cond ((null? lis) #f)
	((pred (car lis)) (car lis))
	(else (find pred (cdr lis)))))

(define (find pred lis)
  (cond [(null? lis) #f]
	[(pred (car lis)) (car lis)]
	[else (find pred (cdr lis))]))



