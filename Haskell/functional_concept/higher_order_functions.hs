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