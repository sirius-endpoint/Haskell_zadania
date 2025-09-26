--Zaimplementuj funkcję obliczającą silnię.

factorial :: Integer -> Integer
factorial n
  | n < 0     = error "Silnia nie istnieje dla liczb ujemnych, łbie"
  | n == 0    = 1
  | otherwise = n * factorial (n - 1)

main :: IO ()
main = do
  let n = 5
  putStrLn ("Silnia z " ++ show n ++ " to " ++ show (factorial n))
