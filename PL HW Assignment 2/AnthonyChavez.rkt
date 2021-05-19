;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname AnthonyChavez) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;-----------------------------Problem 1 start--------------------------------
(define (sphere-volume radius)
  (/ (* 4 (* 3.14 (cube radius))) 3))

(define (shell-volume inner-radius outer-radius)
  (- (sphere-volume outer-radius) (sphere-volume inner-radius)))

(define (cube n)
  (* n (* n n)))

;-----------------------------Problem 1 end----------------------------------

;-----------------------------Problem 2 start--------------------------------
(define (close? number-1 number-2 limit)
  (<= (abs (- number-1 number-2)) limit))
;-----------------------------Problem 2 end----------------------------------

;-----------------------------Problem 3 start--------------------------------
(define (how-many a b c)
  (cond
  [(> (calc a b c) 0) 2]
  [(= (calc a b c) 0) 1]
  [(< (calc a b c) 0) 0]))

(define (calc a b c)
  (- (* b b )(* 4 a c)))
;-----------------------------Problem 3 end----------------------------------

;-----------------------------Problem 4 start--------------------------------
(define (filter-out-symbol list symbol)
  (cond
    [(null? list) '()]
    [(eq? symbol (car list))
      (filter-out-symbol (cdr list) symbol)]
    [else (cons (car list)
      (filter-out-symbol (cdr list) symbol))]))
;-----------------------------Problem 4 end----------------------------------

;-----------------------------Problem 5 start--------------------------------
(define (pMinMax ls)
  (if (null? ls) '() (list(list-min ls)(list-max ls))))
(define (list-min ls)
  (cond 
    [(null? (cdr ls)) (car ls)]
    [(< (car ls) (list-min (cdr ls))) (car ls)]
    [else (list-min (cdr ls))]))
(define (list-max ls)
  (cond 
    [(null? (cdr ls)) (car ls)]
    [(> (car ls) (list-max (cdr ls))) (car ls)]
    [else (list-max (cdr ls))]))
;-----------------------------Problem 5 end----------------------------------

;-----------------------------Problem 6 start--------------------------------
(define (incnth n)
  (lambda (x) (+ n x)))
;-----------------------------Problem 6 end----------------------------------