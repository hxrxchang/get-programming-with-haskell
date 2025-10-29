myGCD a b = if remainder == 0
            then b
            else myGCD b remainder
    where remainder = a `mod` b

sayAmount 1 = "one"
sayAmount 2 = "two"
sayAmount n = "a bunch"

isEmpty [] = True
isEmpty _  = False

myHead (x:xs) = x
myHead [] = error "No head for empty list"

myTail (_:x) = x
myTail [] = []
