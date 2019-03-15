import Data.List

main = do
  as <- group . sort . map read . words <$> getLine :: IO [[Int]]
  case as of
    [[_, _, _], [_, _]] -> putStrLn "FULL HOUSE"
    [[_, _], [_, _, _]] -> putStrLn "FULL HOUSE"
    [[_, _, _], [_], [_]] -> putStrLn "THREE CARD"
    [[_], [_, _, _], [_]] -> putStrLn "THREE CARD"
    [[_], [_], [_, _, _]] -> putStrLn "THREE CARD"
    [[_, _], [_, _], [_]] -> putStrLn "TWO PAIR"
    [[_, _], [_], [_, _]] -> putStrLn "TWO PAIR"
    [[_], [_, _], [_, _]] -> putStrLn "TWO PAIR"
    [[_, _], [_], [_], [_]] -> putStrLn "ONE PAIR"
    [[_], [_, _], [_], [_]] -> putStrLn "ONE PAIR"
    [[_], [_], [_, _], [_]] -> putStrLn "ONE PAIR"
    [[_], [_], [_], [_, _]] -> putStrLn "ONE PAIR"
    _ -> putStrLn "NO HAND"
