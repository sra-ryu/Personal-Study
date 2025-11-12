---- basic sum Type ----

-- define trafficlight(red, yellow, green) sum type
data TrafficLight = Red | Yellow | Green deriving Show

-- implement function that change color of trafficlight
changeColor :: TrafficLight -> TrafficLight
changeColor Red = Green
changeColor Yellow = Red
changeColor Green = Yellow

-- return string representing the action based on the color of trafficlight
action :: TrafficLight -> String
action Red = "stop"
action Yellow = "caution"
action Green = "go"

---- exercise ----

-- define point(x, y), x and y are double
data Point = Point { x :: Double, y :: Double } deriving Show

-- define sum type: shape(circle(center, radius), rectangle(width, height))
data Shape = Circle { center :: Point, radius :: Double }
           | Rectangle { width :: Double, height :: Double } deriving Show

-- implement function that calculate area
p :: Double
p = 3.14159

area :: Shape -> Double
area (Circle _ r) = p * r * r
area (Rectangle w h) = w * h

circle = Circle (Point 0 0) 5.0
rectangle = Rectangle 4.5 7.0