-- calculate Factorial(x!)
-- 3! = 3 * 2 * 1
factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

-- calculate Power(x^n)
-- 2^3 = 2 * 2 * 2
power :: Int -> Int -> Int
power _ 0 = 1
power x n = x * power x (n - 1)

-- find the nth fibonacci number
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)