import Data.List -- For groupBy

delta :: Char -> Int
delta 'U' = 1
delta 'D' = -1

solve :: String -> Int
solve = 
    length .
    filter (all (<0)) .
    groupBy (\x y -> x /= 0 && y /= 0) .
    scanl (+) 0 .
    map delta

-- groupBy (\x y -> x /= 0 && y /= 0) $ [0,1,2,1,0,0,0,-1,-2,-1,-2,-1,0]
-- [[0],[1,2,1],[0],[0],[0],[-1,-2,-1,-2,-1],[0]]

-- scanl (+) 0 [1 .. 5]
-- [0,1,3,6,10,15]

main :: IO ()
main = interact $ show . solve . head . tail . words

-- tail return list of string, so needs head to extract the single strring from the list
