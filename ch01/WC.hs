-- test comment
import Data.List
main = interact wordCount
    where wordCount input = unlines $ [concat $ intersperse " " (map show [ls, ws, cs])]
            where ls = length $ lines input
                  ws = length $ words input
                  cs = length input
