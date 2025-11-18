data Point = Point {x :: Double, y :: Double}

-- make Point as a instance of Eq
instance Eq Point where
    (Point x1 y1) == (Point x2 y2) = x1 == x2 && y1 == y2
-- ghci> Point 1.0 2.0 == Point 1.0 2.0
-- True

-- make Point as a instance of Showw
-- output: "(x, y)"
instance Show Point where
    show (Point x y) = "(" ++ show x ++ ", " ++ show y ++ ")"
-- ghci> Point 3.0 2.0
-- (3.0, 2.0)

-- calculate distance of two points
distance :: Point -> Point -> Double
distance (Point x1 y1) (Point x2 y2) = sqrt((x2 - x1)^2 + (y2 - y1)^2)