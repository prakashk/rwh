-- 4. Turn a list into a palindrome; i.e., it should read the same
-- both backward and forward. For example, given the list [1,2,3],
-- your function should return [1,2,3,3,2,1].

-- 5. Write a function that determines whether its input list is a
-- palindrome.

toPalindrome :: [a] -> [a]
toPalindrome []     = []
toPalindrome (x:xs) = [x] ++ toPalindrome xs ++ [x]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome (x:xs) = (x == last xs) && (isPalindrome $ init xs)
