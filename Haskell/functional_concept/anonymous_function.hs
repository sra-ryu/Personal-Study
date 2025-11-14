isBetween10And20 :: Int -> Bool
isBetween10And20 = \x -> 10 <= x && x <= 20

greet :: String -> String
greet = \s -> "Hello, " ++ s