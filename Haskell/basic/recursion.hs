-- calculate factorial(x!)
-- 3! = 3 * 2 * 1
factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

-- calculate power(x^n)
-- 2^3 = 2 * 2 * 2
power :: Int -> Int -> Int
power _ 0 = 1
power x n = x * power x (n - 1)

-- find the nth fibonacci number
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)


-- use tail recursion and strict evaluation

-- factorial
factorialTR :: Int -> Int -> Int
factorialTR 0 acc = acc
factorialTR x acc = factorialTR (x - 1) $! (x * acc)

factorial2 :: Int -> Int
factorial2 x = factorialTR x 1

-- power
powerTR :: Int -> Int -> Int -> Int
powerTR x 0 acc = acc
powerTR x n acc = powerTR x (n - 1) $! (x * acc)

power2 :: Int -> Int -> Int
power2 x n = powerTR x n 1

-- fibonacci
fibTR :: Int -> Int -> Int -> Int
fibTR 0 pre cur = pre
fibTR n prev curr = fibTR (n - 1) curr $! (prev + curr)

fib2 :: Int -> Int
fib2 n = fibTR n 0 1