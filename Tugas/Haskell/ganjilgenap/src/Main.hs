module Main (main) where

isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

main :: IO ()
main = do
  -- Meminta input bilangan dari pengguna
  putStrLn "Masukkan sebuah bilangan: "
  num <- getLine

  -- Menentukan apakah bilangan tersebut ganjil atau genap
  let even = isEven (read num :: Int)

  -- Menampilkan hasil penentuan
  if even
    then putStrLn "Bilangan tersebut adalah bilangan genap."
    else putStrLn "Bilangan tersebut adalah bilangan ganjil."