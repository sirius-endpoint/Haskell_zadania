{- Uruchom przykładowy program w Haskellu:
addMe :: Integer -> Integer -> Integer
addMe x y = + x y

main :: IO ()
main =  do
putStr "Sum of x + y = "
print(addMe 10 25)

Zmodyfikuj wywołanie funkcji dodawania z typu prefix na infix.
-}

addMe :: Integer -> Integer -> Integer
addMe x y = x + y

main :: IO ()
main = do
  putStr "Sum of x + y = "
  print (10 `addMe` 25)
