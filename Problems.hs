module Problems where

import Data.Map

type Test = (String, String)

data Problem = Problem { description :: String
                       , hint        :: String
                       , tests       :: [Test]
                       } deriving Show

problems :: [Problem]
problems = [ Problem
                 "Make a function named 'myLast' that finds the last element of a list."
                 "myLast :: [a] -> a"
                 [ ("myLast [1,2,3,4]", "4")
                 , ("myLast ['x','y','z']", "'z'") ]

           , Problem
                 "Make a function named 'myButLast' that finds the second last element of a list."
                 "myButLast :: [a] -> a"
                 [ ("myButLast [1,2,3,4]", "3")
                 , ("myButLast ['a'..'z']", "'y'") ]

           , Problem
                 "Make a function named 'elementAt' that finds the element of a list at a specific 1-based index."
                 "elementAt :: [a] -> Int -> a"
                 [ ("elementAt [1,2,3] 2", "2")
                 , ("elementAt \"haskell\" 5", "'e'") ]

           , Problem
                 "Make a functtion named 'myLength' that finds the number of elements in a list."
                 "myLength :: [a] -> Int"
                 [ ("myLength [123, 456, 789]", "3")
                 , ("myLength \"Hello, World!\"", "13") ]

           , Problem
                "Make a function called 'myReverse' that reverses a list."
                "myReverse :: (Eq a) => [a] -> [a]"
                [ ("myReverse \"A man, a plan, a canal, panama!\"", "\"!amanap ,lanac a ,nalp a ,nam A\"")
                , ("myReverse [1,2,3,4]", "[4,3,2,1]") ]
           , Problem
                "Make a function called 'isPalindrome' that finds whether a list is a palindrome (is the same read forward and backward)."
                "isPalindrome :: (Eq a) => [a] -> Bool"
                [ ("isPalindrome [1,2,3]", "False")
                , ("isPalindrome \"madamimadam\"", "True")
                , ("isPalindrome [1,2,4,8,16,8,4,2,1]", "True") ]
           , Problem
                "Make a function called 'flatten' that flattens a nested list structure."
                "data NestedList a = Elem a | List [NestedList a]\nflatten :: NestedList a -> [a]"
                [ ("flatten (Elem 5)", "[5]")
                , ("flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])", "[1,2,3,4,5]")
                , ("flatten (List [])", "[]") ] ]
