--- define functions with section ---
isEven :: Int -> Bool
isEven = (== 0) . (`mod` 2)

dividedBy10 :: Double -> Double
dividedBy10 = (/ 10)

startsWithA :: String -> Bool
startsWithA = (== 'A') . head

--- use infix notation ---
subtract' :: Int -> Int -> Int
subtract' x y = x - y

subtractInfix' :: Int -> Int -> Int
subtractInfix' x y = x `subtract'` y