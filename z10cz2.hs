-- Napisz funkcję sumOfDigits, która dla danej liczby całkowitej zwróci sumę jej cyfr.


sumOfDigits :: Integer -> Integer
sumOfDigits n
  | n < 0     = sumOfDigits (-n)  -- obsługa liczb ujemnych
  | n < 10    = n                 -- jeśli cyfra pojedyncza, to jej suma to ona sama
  | otherwise = (n `mod` 10) + sumOfDigits (n `div` 10)

main :: IO ()
main = do
  print $ sumOfDigits 12345   -- 15
  print $ sumOfDigits (-987)  -- 24

