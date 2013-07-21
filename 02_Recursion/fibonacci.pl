
fibonacci(1,1).
fibonacci(2,1).
fibonacci(P,Z):-P>2,Q is P-1,fibonacci(Q,A),R is P-2,fibonacci(R,B),Z is A+B.
