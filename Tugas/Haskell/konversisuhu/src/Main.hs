module Main (main) where

convertToFahrenheit :: Double -> Double
convertToFahrenheit c = c * 9 / 5 + 32

convertToKelvin :: Double -> Double
convertToKelvin c = c + 273.15

main :: IO ()
main = do
  putStrLn "Masukkan suhu dalam Celcius: "
  tempC <- getLine

  let tempF = convertToFahrenheit (read tempC :: Double)
  let tempK = convertToKelvin (read tempC :: Double)

  putStrLn ("Suhu dalam Fahrenheit: " ++ show tempF)
  putStrLn ("Suhu dalam Kelvin: " ++ show tempK)