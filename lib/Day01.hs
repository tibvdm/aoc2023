module Day01 ( run ) where

import Data.Char (isDigit)

part1 :: String -> Int
part1 = sum                                     -- sum the list
      . map (
            read                                -- convert each line to an integer
            . (\xs -> [ head xs, last xs ])     -- take the first and last character
            . filter isDigit                    -- filter out non-digits
      )   
      . lines                                   -- split the input into lines

part2 :: String -> Int
part2 = sum                                     -- sum the list
      . map (
            read                                -- convert each line to an integer
            . (\xs -> [ head xs, last xs ])     -- take the first and last character
            . filter isDigit                    -- filter out non-digits
            . replaceNumberStrings              -- replace the number strings with numbers
      )
      . lines                                   -- split the input into lines
    where replaceNumberStrings :: String -> String
          replaceNumberStrings []                       = []
          replaceNumberStrings ('z':'e':'r':'o':xs)     = '0' : replaceNumberStrings ('o':xs)
          replaceNumberStrings ('o':'n':'e':xs)         = '1' : replaceNumberStrings ('e':xs)
          replaceNumberStrings ('t':'w':'o':xs)         = '2' : replaceNumberStrings ('o':xs)
          replaceNumberStrings ('t':'h':'r':'e':'e':xs) = '3' : replaceNumberStrings ('e':xs)
          replaceNumberStrings ('f':'o':'u':'r':xs)     = '4' : replaceNumberStrings xs
          replaceNumberStrings ('f':'i':'v':'e':xs)     = '5' : replaceNumberStrings ('e':xs)
          replaceNumberStrings ('s':'i':'x':xs)         = '6' : replaceNumberStrings xs
          replaceNumberStrings ('s':'e':'v':'e':'n':xs) = '7' : replaceNumberStrings ('n':xs)
          replaceNumberStrings ('e':'i':'g':'h':'t':xs) = '8' : replaceNumberStrings ('t':xs)
          replaceNumberStrings ('n':'i':'n':'e':xs)     = '9' : replaceNumberStrings ('e':xs)
          replaceNumberStrings (x:xs)                   =  x  : replaceNumberStrings xs

run :: Int -> IO ()
run 1 = readFile "input/day01.txt" >>= putStrLn . ("Day 1 (part 1) resulted in: " ++) . show . part1
run 2 = readFile "input/day01.txt" >>= putStrLn . ("Day 1 (part 2) resulted in: " ++) . show . part2
run _ = putStrLn "Specify part 1 or 2!"
