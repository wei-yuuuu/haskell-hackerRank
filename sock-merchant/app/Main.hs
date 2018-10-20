module Main ( main, solve ) where
-- import Lib
import Data.List

solve :: [Int] -> Int
solve = sum . map (\xs -> length xs `div` 2) . group . sort

main :: IO()
main = interact $ show . solve . map read . tail . words

