module Main (main) where

faktorial :: Int -> Int
faktorial 0 = 1
faktorial n = n * faktorial (n - 1)

main :: IO ()
main = do
    putStrLn "Masukkan bilangan: "
    bilangan <- getLine
    let n = read bilangan
    putStrLn $ "Faktorial dari " ++ show n ++ " adalah " ++ show (faktorial n)