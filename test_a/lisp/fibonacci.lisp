(defun fib-rec (n)     ;Fibonacci list at pos n with recursion form
  (if (= 0 n) 0 (if (= 1 n) 1 (+ (fib-rec (- n 2)) (fib-rec (- n 1))))))