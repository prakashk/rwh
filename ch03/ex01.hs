-- 1. Write a function that computes the number of elements in a
-- list. To test it, ensure that it gives the same answers as the
-- standard length function.

-- 2. Add a type signature for your function to your source file.

{-# LANGUAGE TemplateHaskell #-}

import Test.QuickCheck
import Test.QuickCheck.All

myLength :: [a] -> Int
myLength []     = 0
myLength (x:xs) = 1 + myLength xs

prop_myLength xs = myLength xs == length xs

main = $(quickCheckAll)
