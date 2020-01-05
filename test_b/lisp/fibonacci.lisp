(defun fib (n)         ;calculate the Fibonacci list at pos n
  (do ((i 0 (1+ i))
       (cur 0 next)
       (next 1 (+ cur next))) 
      ((= n i) cur)))