-- Parameter: a list
-- Return: if the list is empty -> true otherwise flase
isEmpty :: [a] -> Bool
isEmpty [] = True
isEmpty _ = False

-- Parameter: a list
-- Return: first element of the list
firstElem :: [a] -> a
firstElem (x:_) = x

-- Parameter: a list
-- Return: first element of the list
secondElem :: [a] -> a
secondElem (_:xs) = firstElem xs

-- Parameter: a list
-- Return: length of the list(count all elements)
listLength :: [a] -> Int
listLength [] = 0
listLength (x:xs) = 1 + listLength xs

