myLength [] = 0
myLength xs = 1 + myLength (tail xs)

myTake _ [] = []
myTake 0 _ = []
myTake n (x:xs) = x:rest
    where rest = myTake (n-1) xs

myCycle (first:rest) = first:myCycle (rest ++ [first])


ackermann 0 n = n + 1
ackermann m 0 = ackermann (m-1) 1
ackermann m n = ackermann (m-1) (ackermann m (n-1))
