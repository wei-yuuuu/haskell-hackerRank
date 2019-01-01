solve :: [Int] -> Int
solve [n, p] = min fromFront fromBack
    where fromFront = p `div` 2
          fromBack = n `div` 2 - fromFront

-- (0,1) (2,3) (4,5) (6,7) ...
-- page
-- 1   -> 0
-- 2   -> 1
-- 3   -> 1
-- 4   -> 2
-- 5   -> 2
-- 6   -> 3
-- 7   -> 3

main :: IO ()
main = interact $ show . solve . map read . words
