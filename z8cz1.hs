{- Zaimplementuj funkcję zwracającą ostatnią cyfrę danej liczby.
>>> lastDigit 42
2
>>> lastDigit (-17)
7
-}

lastDigit :: Integral a => a -> a
lastDigit n = abs n `mod` 10

main :: IO ()
main = do
  print (lastDigit 42)   -- 2
  print (lastDigit (-17)) -- 7
  print (lastDigit 0)    -- 0
