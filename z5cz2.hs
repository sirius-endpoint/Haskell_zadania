{- Napisz funkcję, która generuje dwuelementowe krotki z wszystkimi możliwymi kombinacjami dwóch kolorów ze zbioru {black, white, blue, yellow, red}. 
Wyeliminuj wyniki typu (red,red) oraz powtórzenia typu (red, yellow) - (yellow, red).
-}

colors :: [String]
colors = ["black", "white", "blue", "yellow", "red"]

uniqueColorPairs :: [(String, String)]
uniqueColorPairs = [(c1, c2) | (i, c1) <- indexedColors, (j, c2) <- indexedColors, i < j]
  where
    indexedColors = zip [1..] colors

main :: IO ()
main = do
  print uniqueColorPairs
