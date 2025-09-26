--Napisz funkcję filter p l, której wartością zwracaną jest lista wszystkich elementów listy l , które spełnią predykat p. Jaki ma typ funkcja filter?

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x       = x : filter' p xs
  | otherwise = filter' p xs

main :: IO ()
main = print $ filter' even [1..10]  -- [2,4,6,8,10]
