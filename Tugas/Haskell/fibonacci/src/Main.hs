module Main (main) where

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main :: IO ()
main = do
    putStrLn "Masukkan jumlah elemen: "
    jumlahStr <- getLine
    let jumlah = read jumlahStr
    mapM_ (putStrLn . show) (map fibonacci [0..jumlah-1])
