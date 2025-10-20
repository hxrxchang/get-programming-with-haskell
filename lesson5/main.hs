ifEven muFunction x = if even x
               then muFunction x
               else x

inc n = n + 1
double n = n * 2
square n = n ^ 2

ifEvenInc = ifEven inc
ifEvenDouble = ifEven double
ifEvenSquare = ifEven square
-- ifEvenInc 10
-- ifEvenDouble 10
-- ifEvenSquare 10

add4 a b c d = a + b + c + d

-- 3つの引数の合計にxを加える関数を返す
addXto3 x = (\b c d -> add4 x b c d)
-- addXto3 5 1 2 3
-- これは 1 + 2 + 3 に5を加える

subtract2 = flip (-) 2
-- subtract2 7

-- 部分適用
add a b = a + b
add2 = add 2
-- add2 5
