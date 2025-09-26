{- Napisz następujące funkcje:

    square, która dla podanej liczby zwróci jej kwadrat.
    cube, która dla podanej liczby zwróci jej sześcian.
    average, która przyjmuje dwie liczby i zwraca ich średnią.
-}

--kwadrat liczby
square :: Num a => a -> a
square x = x * x

main :: IO ()
main = do
  let num = 5
  putStrLn ("Kwadrat liczby " ++ show num ++ " to " ++ show (square num))

--szescian liczby
cube :: Num a => a -> a
cube x = x * x * x

main :: IO ()
main = do
  let num = 3
  putStrLn ("Szescian liczby " ++ show num ++ " to " ++ show (cube num))

--srednia liczb
average :: Fractional a => a -> a -> a
average x y = (x + y) / 2

main :: IO ()
main = do
  let a = 10
      b = 4
  putStrLn ("Srednia z " ++ show a ++ " i " ++ show b ++ " to " ++ show (average a b))
