(defpackage #:hamming
  (:use #:cl)
  (:export #:distance))

(in-package #:hamming)

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands." 
  (if (= (length dna1)(length dna2))
      (loop for c across dna1
            for d across dna2
              count (char-not-equal c d))))
