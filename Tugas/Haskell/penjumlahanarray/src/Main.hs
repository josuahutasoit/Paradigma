module Main (main) where

-- Fungsi untuk menjumlahkan semua elemen dari sebuah array
sumArray :: [Int] -> Int
sumArray [] = 0  -- Basis: jika array kosong, maka jumlahnya adalah 0
sumArray (x:xs) = x + sumArray xs  -- Rekursif: jumlahkan elemen pertama dengan jumlah elemen sisanya

main :: IO ()
main = do
  -- Membuat array yang akan dijumlahkan
  let numbers = [1, 2, 3, 4, 5]

  -- Menjumlahkan semua elemen dari array
  let result = sumArray numbers

  -- Menampilkan hasil penjumlahan
  putStrLn ("Jumlah semua elemen dari array: " ++ show result)