{- Napisz kod rozwiązujący równanie kwadratowe. W wersji I wykorzystaj konstrukcję if..else.
W wersji II skorzystaj z dozorów/strażników (konstrukcja typu "case").
-}

-- na if-ach
solveQuadratic :: (Ord a, Floating a, Show a) => a -> a -> a -> String
solveQuadratic a b c =
  let delta = b*b - 4*a*c in
  if delta < 0 then
    "Brak pierwiastków rzeczywistych"
  else if delta == 0 then
    let x = -b / (2*a) in
    "Jeden pierwiastek: x = " ++ show x
  else
    let x1 = (-b + sqrt delta) / (2*a)
        x2 = (-b - sqrt delta) / (2*a)
    in "Dwa pierwiastki: x1 = " ++ show x1 ++ ", x2 = " ++ show x2

main :: IO ()
main = do
  let a = 1
      b = -3
      c = 2
  putStrLn ("Rozwiązanie równania: " ++ solveQuadratic a b c)

--na guardach
solveQuadratic :: (Ord a, Floating a, Show a) => a -> a -> a -> String
solveQuadratic a b c
  | delta < 0  = "Brak pierwiastków rzeczywistych"
  | delta == 0 = "Jeden pierwiastek: x = " ++ show x
  | otherwise  = "Dwa pierwiastki: x1 = " ++ show x1 ++ ", x2 = " ++ show x2
  where
    delta = b*b - 4*a*c
    x     = -b / (2*a)
    x1    = (-b + sqrt delta) / (2*a)
    x2    = (-b - sqrt delta) / (2*a)

main :: IO ()
main = do
  let a = 1
      b = 2
      c = 5
  putStrLn ("Rozwiązanie równania: " ++ solveQuadratic a b c)
