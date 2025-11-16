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


--- higher order functions - mix ---
-- select elements that even and divide by 2
halveEvens :: [Int] -> [Int]
halveEvens = map (`div` 2) . filter even
-- `div` 2: for int
-- /2: for double or float

-- without composition
halveEvens' :: [Int] -> [Int]
halveEvens' xs = map (`div` 2) (filter even xs)

-- convert string to uppercase
-- predicate: length of string > 3
longToUpper :: [String] -> [String]
longToUpper = map (map toUpper) . filter ((> 3) . length)
-- string = [Char], list of string = [[Char], [Char], ...]


--- higher order functions - fold ---
-- product all elements of a list
productList :: [Int] -> Int
productList = foldr (*) 1

-- concatenate all elements of a list
concatWords :: [String] -> String
concatWords = foldl go ""
    where
        go "" s = s
        go s1 s2 = s1 ++ " " ++ s2

-- find a max element(int)
maxList :: [Int] -> Int
maxList (x:xs) = foldr max x xs