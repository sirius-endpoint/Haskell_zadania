-- Napisz funkcję onlyEven, która przyjmuje listę liczb całkowitych i zwraca listę zawierającą tylko liczby parzyste.

onlyEven :: [Integer] -> [Integer]
onlyEven xs = filter even xs

main :: IO ()
main = print $ onlyEven [1..10]  -- [2,4,6,8,10]


--lub
onlyEven :: [Integer] -> [Integer]
onlyEven [] = []
onlyEven (x:xs)
  | even x    = x : onlyEven xs
  | otherwise = onlyEven xs

main :: IO ()
main = print $ onlyEven [1..10]  -- [2,4,6,8,10]
