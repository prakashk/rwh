-- 3. Write a function that computes the mean of a list, i.e., the sum
-- of all elements in the list divided by its length.

mean :: Fractional a => [a] -> a
mean xs = (sum xs) / fromIntegral (length xs)
