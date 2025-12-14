/* factorial(N,Result): calculate factorial of N */
factorial(0, 1).
factorial(N, Result) :- 
    N > 0,
    N1 is N - 1,
    factorial(N1, Result1),
    Result is N * Result1.

/* sumTo(N,Sum): add from 1 to N. */
sumTo(0, 0).
sumTo(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sumTo(N1, Sum1),
    Sum is N + Sum1.

/* power(Base,Exp,Result): calculate exp power of base */
power(_, 0, 1).
power(Base, Exp, Result) :-
    Exp > 0,
    Exp1 is Exp - 1,
    power(Base, Exp1, Result1),
    Result is Base * Result1.

/* countDigits(N,Count): count digits of N */
countDigits(N, Count) :-
    N < 0,
    N1 is -N,
    countDigits(N1, Count).

countDigits(N, 1) :-
    N >= 0,
    N < 10.

countDigits(N, Count) :-
    N >= 10,
    N1 is N // 10,
    countDigits(N1, Count1),
    Count is Count1 + 1.

/* fibonacci(N,Result): find N'th fibonacci number */
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, Result) :-
    N > 0,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, Result1),
    fibonacci(N2, Result2),
    Result is Result1 + Result2.