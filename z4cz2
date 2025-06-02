{- Skorzystaj z mechanizmu składania list w celu utworzenia tabliczki mnożenia. Tabela powinna być listą złożoną z trójelementowych krotek. 
Pierwsze dwa elementy to liczby z zakresu 1..12, a trzeci to ich iloczyn.
-}

multiplicationTable :: [(Int, Int, Int)]
multiplicationTable = [(x, y, x * y) | x <- [1..12], y <- [1..12]]

main :: IO ()
main = do
  print multiplicationTable
