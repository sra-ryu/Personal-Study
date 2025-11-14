-- uncurrying power
powerTuple :: (Int, Int) -> Int
powerTuple (base, exp) = (^) base exp

-- currying power
powerCurried :: Int -> Int -> Int
powerCurried x n = (^) x n

-- return range of number(int) in a to b
rangeCurried :: Int -> Int -> [Int]
rangeCurried start end = [start .. end]

-- change rangeCurried to tuple
rangeTuple :: (Int, Int) -> [Int]
rangeTuple (start, end) = [start .. end]