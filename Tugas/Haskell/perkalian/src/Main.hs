module Main (main) where

main :: IO ()
main = do
   putStrLn "Masukkan angka pertama: "
   num1 <- getLine
   putStrLn "Masukkan angka kedua: "
   num2 <- getLine
   let result = (read num1 :: Float) * (read num2 :: Float)
   putStrLn ("Hasil perkalian: " ++ show result)
