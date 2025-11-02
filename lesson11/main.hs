x :: Int
x = 2

y :: Integer
y = 2

letter :: Char
letter = 'a'

interestRate :: Double
interestRate = 0.375

isFun :: Bool
isFun = True

values :: [Int]
values = [1,2,3]

testScores :: [Double]
testScores = [0.99, 0.7, 0.8]

letters :: [Char]
letters = ['a', 'b', 'c']

aPet :: [Char]
aPet = "cat"

anotherPet :: String
anotherPet = "cat"

streetAddress :: (Int, String)
streetAddress = (123, "Main St.")

half :: Int -> Double
half x = fromIntegral x / 2

anotherNumber :: Int
-- 文字列からキャスト
anotherNumber = read "6"

makeAddress :: Int -> String -> String -> (Int, String, String)
makeAddress number street city = (number, street, city)

ifEven :: (Int -> Int) -> Int -> Int
ifEven f n = if even n
            then f n
            else n

simple :: a -> a
simple x = x

makeTriple :: a -> b -> c -> (a, b, c)
makeTriple x y z = (x, y, z)
