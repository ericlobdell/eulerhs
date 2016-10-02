-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

-- Find the sum of all the multiples of 3 or 5 below 1000.

divides :: Int -> Int -> Bool
divides x y = x `mod` y == 0

sum_of_multiples :: Int -> Int -> Int -> Int
sum_of_multiples x y z = sum [ n | n <- [1..z - 1], divides n x || divides n y]