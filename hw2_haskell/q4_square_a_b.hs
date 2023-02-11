a :: Integer
a = 2

b :: Integer
b = 3

square :: Integer -> Integer
square x = x * x

result :: Integer
result = square (a + b)
