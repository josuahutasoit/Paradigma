module Main (main) where

-- Fungsi untuk menampilkan segitiga bintang
-- dengan tinggi yang ditentukan
printTriangle :: Int -> IO ()
printTriangle 0 = return ()  -- Basis: jika tinggi segitiga adalah 0, tidak perlu menampilkan apapun
printTriangle n = do
  -- Rekursif: menampilkan baris bintang pertama, lalu memanggil fungsi dengan tinggi segitiga yang lebih kecil
  putStrLn (replicate n '*')
  printTriangle (n-1)

main :: IO ()
main = do
  -- Meminta input tinggi segitiga dari pengguna
  putStrLn "Masukkan tinggi segitiga: "
  height <- getLine

  -- Menampilkan segitiga bintang dengan tinggi yang ditentukan
  printTriangle (read height :: Int)