{- Zaimplementuj funkcję, która pobiera dwie liczby i znajduje sumę ich kwadratów.


>>> sumOfSquares 3 4
25
-}

sumOfSquares :: Num a => a -> a -> a
sumOfSquares x y = x * x + y * y

main :: IO ()
main = do
  print (sumOfSquares 3 4)  -- 25
