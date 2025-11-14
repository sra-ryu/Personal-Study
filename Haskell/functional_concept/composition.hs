import Data.Char (toUpper)

squareThenAddTwo :: Int -> Int
squareThenAddTwo = (2 +) . (^ 2)

isLengthEven :: [a] -> Bool
isLengthEven = (== 0) . (`mod` 2) . length
-- 'mod 2' means -> mod 2 x = 2 mod x
-- '(`mod` 2)' means -> mod x 2 = x mod 2

reverseUpper :: String -> String
reverseUpper = reverse . map toUpper