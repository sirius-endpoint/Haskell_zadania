{- Napisz następujące funkcje dla list:

a) append l m , która konkatenuje listy l i m,

b) member x l , która sprawdza, czy x jest elementem listy l,

c) last l, która znajduje ostatni element w liście,

d) delete x l, która skasuje element x z listy l

e) split x l , która podzieli listę l do dwóch list l1 i l2. l1 zawiera elementy mniejsze niż x a l2 elementy większe niż x.

-}

--a 
append :: [a] -> [a] -> [a]
append [] ys = ys
append (x:xs) ys = x : append xs ys

main :: IO ()
main = print $ append [1,2,3] [4,5,6]  -- [1,2,3,4,5,6]

--b
member :: Eq a => a -> [a] -> Bool
member _ [] = False
member x (y:ys)
  | x == y    = True
  | otherwise = member x ys

main :: IO ()
main = do
  print $ member 3 [1,2,3,4]  -- True
  print $ member 5 [1,2,3,4]  -- False


--c
lastElem :: [a] -> a
lastElem [] = error "lastElem: pusta lista"
lastElem [x] = x
lastElem (_:xs) = lastElem xs

main :: IO ()
main = print $ lastElem [1,2,3,4]  -- 4

--d
delete :: Eq a => a -> [a] -> [a]
delete _ [] = []
delete x (y:ys)
  | x == y    = ys
  | otherwise = y : delete x ys

main :: IO ()
main = print $ delete 3 [1,2,3,4,3]  -- [1,2,4,3]

--e
split :: Ord a => a -> [a] -> ([a], [a])
split _ [] = ([], [])
split x (y:ys)
  | y < x     = (y:lt, gt)
  | y > x     = (lt, y:gt)
  | otherwise = (lt, gt)  -- elementy równe x ignorujemy
  where
    (lt, gt) = split x ys

main :: IO ()
main = print $ split 3 [1,2,3,4,5,3,0]  -- ([1,2,0],[4,5])

