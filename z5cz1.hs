--Napisz funkcję wyznaczającą kolejne wyrazy ciągu Fibonacciego.
fib :: Integer -> Integer
fib n
  | n < 0     = error "Fibonacci nie istnieje dla n < 0, durniu"
  | n == 0    = 0
  | n == 1    = 1
  | otherwise = fib (n - 1) + fib (n - 2)

main :: IO ()
main = do
  putStrLn "Pierwsze 10 wyrazów ciągu Fibonacciego:"
  print [fib x | x <- [0..9]]

--rekurencja ogonowa
fibTail :: Integer -> Integer
fibTail n
  | n < 0     = error "Znowu próbujesz z ujemną? Weź się ogarnij."
  | otherwise = go n 0 1
  where
    go 0 a _ = a
    go n a b = go (n - 1) b (a + b)

main :: IO ()
main = do
  putStrLn "Pierwsze 15 wyrazów (fibTail):"
  print [fibTail x | x <- [0..14]]

