import System.Environment (getArgs)
import Data.List

interactWith function inputFile outputFile = do
  input <- readFile inputFile
  writeFile outputFile (function input)


myFunction :: [Char] -> [Char]

myFunction input =
    unlines $ transpose $ lines input
    where
        transpose []     = []
        transpose (x:xs) = (row (x:xs)):(transpose (rest (x:xs)))
            where
                row [] = []
                row (x:xs) =
                    case x of
                        []     -> row xs
                        (y:ys) -> y:row xs
                rest [] = []
                rest (x:xs) =
                    case x of
                        []     -> rest xs
                        (y:ys) -> ys:rest xs

main = mainWith myFunction
  where mainWith function = do
          args <- getArgs
          case args of
            [input,output] -> interactWith function input output
            _ -> putStrLn "error: exactly two arguments needed"
