{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
import Data.Char


cuentaPalabras :: String -> Int
cuentaPalabras = length.words

capitalizarPalabras :: String -> String
capitalizarPalabras = unwords . map capitalize . words
    where capitalize (x:xs) = toUpper x : map toLower xs

main = do
    print $ cuentaPalabras "Milagros Joaquina Selles Del Piano"               
    print $ capitalizarPalabras "escribi mi nombre"