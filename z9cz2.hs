--Napisz funkcję doubleAll, która przyjmuje listę liczb całkowitych i zwraca listę, w której każda liczba jest podwojona.

doubleAll :: [Integer] -> [Integer]
doubleAll [] = []
doubleAll (x:xs) = (2 * x) : doubleAll xs

main :: IO ()
main = print $ doubleAll [1, 2, 3, 4]  -- [2,4,6,8]

--lub z map
doubleAll :: [Integer] -> [Integer]
doubleAll xs = map (*2) xs

main :: IO ()
main = print $ doubleAll [1, 2, 3, 4]  -- [2,4,6,8]
