import Data.Char (toUpper)

applyThrice :: (a -> a) -> a -> a
applyThrice f x = f (f (f x))

--- higher order functions - map ---
-- add 10 to elements
add10 :: [Int] -> [Int]
add10 = map (10 +)

-- square all elements of a list
squareAll :: [Int] -> [Int]
squareAll = map (^ 2)

-- calculate a length of strings
lengths :: [String] -> [Int]
lengths = map length

--- higher order functions - filter ---
-- filter elements that greater than 10
greaterThan10 :: [Int] -> [Int]
greaterThan10 = filter (> 10)

-- filter even numbers
onlyEvens :: [Int] -> [Int]
onlyEvens = filter ((== 0) . (`mod` 2))

-- filter string that length == 2
length' :: [String] -> [String]
length' = filter ((== 2) . length)