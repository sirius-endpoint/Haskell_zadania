--Napisz funkcję, która pobiera listę i zwraca tę samą listę z elementami w odwróconej kolejności, nie korzystając z gotowej funkcji reverse

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

main :: IO ()
main = do
  print (myReverse [1,2,3,4,5])  -- [5,4,3,2,1]
  print (myReverse "hello")      -- "olleh"
  print (myReverse ([] :: [Int])) -- []
