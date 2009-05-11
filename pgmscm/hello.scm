#!/usr/bin/env gosh
;; -*- coding: utf-8 -*-

;#!/bin/sh
:; exec gosh -- "$0" "$@"

(define (main args)
  (print "Hello, World.")
  0)


(define (main args)
  (print (string-join (cdr args) " "))
  0)