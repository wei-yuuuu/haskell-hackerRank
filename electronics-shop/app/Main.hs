import Control.Monad -- liftM2
import Data.List -- sortBy
import Data.Maybe -- listToMaybe

solve :: Int -> [Int] -> [Int] -> Int
solve b keyboards drives =
    fromMaybe (-1) $
    listToMaybe $
    sortBy (flip compare) $
    filter (<=b) $
    liftM2 (+) keyboards drives

getList :: Read a => IO [a]
getList = map read . words <$> getLine

main :: IO ()
main = do
    [b, _, _] <- getList
    keyboards <- getList
    drives <- getList
    putStrLn $ show $ solve b keyboards drives

-- let keyboards = [3, 1]
-- let drives = [5, 2, 8]
-- b = 10
--
-- liftM2 (,) keyboards drives
-- [(3,5),(3,2),(3,8),(1,5),(1,2),(1,8)]
--
-- liftM2 (+) keyboards drives
-- [8,5,11,6,3,9]
--
-- maximum $ filter (<=b) $ liftM2 (+) keyboards drives
-- 9
-- maximum $ filter (<=1) $ liftM2 (+) keyboards drives
-- ***Exception: Prelude.maximum: empty list
--
-- sortBy (flip compare) $ filter (<=b) $ liftM2 (+) keyboards drives
-- [9,8,6,5,3]
-- sortBy (flip compare) $ filter (<=1) $ liftM2 (+) keyboards drives
-- []
--
-- fromMaybe 5 Nothing
-- 5
-- fromMaybe 5 $ Just 6
-- 6

