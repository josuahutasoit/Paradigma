module Main (main) where

isPrime :: Int -> Bool
isPrime n
   | n < 2 = False
   | n == 2 = True
   | even n = False
   | otherwise = all (\x -> n `mod` x /= 0) [3,5..floor . sqrt . fromIntegral $ n]

main :: IO ()
main = do
   putStrLn "Masukkan beberapa bilangan, dipisahkan dengan spasi: "
   nums <- getLine
   let result = filter isPrime (map read (words nums) :: [Int])
   putStrLn ("Bilangan prima: " ++ show result)
