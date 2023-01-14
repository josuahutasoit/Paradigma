module Main (main) where

cetakBaris :: Int -> Int -> String
cetakBaris n k
    | k > n = ""
    | otherwise = (replicate (n - k) ' ') ++ (concat (map show [1..k])) ++ (concat (map show (reverse [1..(k-1)]))) ++ "\n" ++ cetakBaris n (k+1)

main :: IO ()
main = do
    putStrLn "Masukkan tinggi piramida: "
    tinggiStr <- getLine
    let tinggi = read tinggiStr
    putStr $ cetakBaris tinggi 1