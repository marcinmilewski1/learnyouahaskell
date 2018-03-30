module Main where

import Lib
import System.Info
import System.Environment

add1 :: Num t => t -> [t]
add1 n = [n + 1]

main :: IO ()
main = do
-- 2. Starting out
  print (2 + 15)
  print (49 * 100)
  print (1892 - 1472)
  print (5 / 2)
  print ((50 * 100) - 4999)
  print (50 * 100 - 4999)
  print (50 * (100 - 4999))

  print (True && False)
  print (True && True)
  print (False || True)
  print (not False)
  print (not (True && True))

  print (5 == 5)
  print (1 == 0)
  print (5 /= 5)
  print (5 /= 4)
  print ("hello" == "hello")

--  print (5 + "four")

  print (succ 8)
  print (min 9 10)
  print (min 3.4 3.2)
  print (max 100 101)

  print (succ 9 + max 5 4 + 1)
  print ((succ 9) + (max 5 4) + 1)
  print (succ(succ(9*10)))

  print (div 92 10,0)
  print (92 `div` 10)

  let doubleMe x = x + x
  print (doubleMe 9)

  let doubleUs x y = x*2 + y*2
  print (doubleUs 4 9)
  print (doubleUs 4 9 + doubleMe 2)
  let doubleUs x y= doubleMe x + doubleMe y
  print (doubleUs 4 9)
  print (doubleUs 4 9 + doubleMe 2)

  let doubleSmallNumber x = if x > 100 then x else x*2

  print (doubleSmallNumber 10)
  print (doubleSmallNumber 101)

  let conanO'Brien = "It's a-me, Conan O'Brien!"
  print (conanO'Brien)

  -- LISTS
  let lostNumbers = [4,8,15,16,23,42]
  let lostNumbers2 = [1,2,3]
  print (lostNumbers)
  print (lostNumbers ++ lostNumbers2) -- put at the end take a while
  print (5:lostNumbers) -- put at the begining is instantaneous
  print ([9.4,33.2,96.2,11.2,23.25] !! 1  )
  print ("Steve Buscemi" !! 6  )
  let b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
  print (b)
  print(b !! 0)

  print([3,2,1] > [2,1,0])
  print([3,4,2] > [3,4])
  print([3,4,2] == [3,4,2] )

  print(head [1,2,3,4,5])
  print(tail [1,2,3,4,5])
  print(last [1,2,3,4,5])
  print(init [1,2,3,4,5])
  print(length [1,2,3,4,5])
  print(reverse [1,2,3,4,5])
  print(take 3 [5,4,3,2,1])
  print(take 1 [5,4,3,2,1])
  print(take 0 [5,4,3,2,1])
  print(drop 3 [5,4,3,2,1])
  print(maximum [5,4,3,2,1])
  print(minimum [5,4,3,2,1])
  print(sum [5,4,3,2,1])
  print(product [5,4,3,2,1])
  print(4 `elem` [3,4,5,6])
  print(1 `elem` [3,4,5,6])

  print([1..20])
  print(['a'..'z'])
  print([2,4..20])
--  print([0.1, 0.3..1])
  print(take 24 [13,26..])
  print(take 10 (cycle [1,2,3]))
  print(take 10 (repeat [1,2,3]))
  print (replicate 5 10)
  print ([x*2 | x <- [1..10]]  )
  print ([x*2 | x <- [1.. 10], x*2 >= 12])
  print ([x | x <- [50..100], x `mod` 7 == 3])
  let boombangs xs = [if x < 10 then "boom" else "bang" | x <- xs, odd x]
  print (boombangs [1..20])
  print ([ x | x <- [10..20], x /= 13, x /= 15, x /= 19])
  print ([x * y | x <- [2,5,10], y <- [8, 10, 11]])
  print ([x * y | x <- [2,5,10], y <- [8, 10, 11], x*y > 30])
  let length' xs = sum([1 | _ <- xs])
  print(length' [1,2,3])
  let removeNonUppercase xs = [x | x <- xs, x `elem` ['A'..'Z']]
  print(removeNonUppercase "TestT")
  let xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
  print ([ [ x | x <- xs, even x ] | xs <- xxs])

  -- TUPLES
  let pairs = [(1,2), (1,3), (2,2)]
  print (pairs)
--  type error [(1,2),(8,11,5),(4,5)]
  print (fst (1,2))
  print (snd (1,2))
  print (zip [1,2,3,4,5] [5,5,5,5,5])
  print (zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"] )
  print (zip [1..] ["apple", "orange", "cherry", "mango"]  )
  let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
  print (rightTriangles)