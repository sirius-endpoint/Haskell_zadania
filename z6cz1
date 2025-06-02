{- Napisz funkcję, która pobiera trzy liczby i zwraca różnicę między największą i najmniejszą liczbą.
>>> minmax 7 1 4
6
-}

minmax :: (Ord a, Num a) => a -> a -> a -> a
minmax x y z = maximum [x, y, z] - minimum [x, y, z]

main :: IO ()
main = do
  print (minmax 7 1 4)    -- powinno wypisać 6
  print (minmax 100 33 78) -- wypisze 67
