-- Parameter: two integers
-- Return: sum of the two integers
add :: Int -> Int -> Int
add x y = x + y

-- Paramter: one integer
-- Return: double of the integer
double :: Int -> Int
double x = 2 * x

-- Paramter: one integer
-- Return: if the integer is an even number then true, else false
isEven :: Int -> Bool
isEven x = if x `mod` 2 == 0 then True else False

-- Parameter: two integers
-- Return: the larger number
maxInt :: Int -> Int -> Int
maxInt x y = if x >= y then x else y

-- Parameter: one integer
-- Return: the absolute value of the integer
absValue :: Int -> Int
absValue x = if x < 0 then (-1) * x else x