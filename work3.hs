--Лабораторна робота №3
-- Виконала студентка групи КН-31 Валько Катерина

-- 1.1 Послiдовнiсть тотожних елементiв списку замiнити одним елементом,
-- напр.: [1,1,1,5,5,3, 1,1,222,222,222,222] ⇒ [1,5,3,1,222].

-- а) без застосування 
headCustom :: [a] -> a
headCustom (x:xs) = x

func :: Eq a => [a] -> [a]
func [] = []
func [x] = [x]
func (x:xs) = if x == headCustom xs
                    then func xs
                    else x : func xs


-- б) з застосуванням вбудованих функцiй.
func2 :: Eq a => [a] -> [a]
func2 [] = []
func2 [x] = [x]
func2 (x:xs)
            | x == head xs = func2 xs
            | otherwise = x : func2 xs

removeDuplicates2 :: Eq a => [a] -> [a]
removeDuplicates2 = foldl (\seen x -> if x `elem` seen
                                      then seen
                                      else seen ++ [x]) []
-- Test
-- input: [1,1,1,2,4,8,8,99,99]
-- [1,2,4,8,99]

-- input: [99, 99, 88, 88, 77]
-- [1,2,55,888]



-- 2.1 Визначити, чи два числа взаємно простi.

-- а) без застосування 
euclid :: Integer -> Integer -> Integer
euclid n m
  | n == m = n
  | n < m = euclid n (m-n)
  | otherwise = euclid (n-m) m

func3 :: Integer -> Integer -> Bool
func3 x y = euclid x y == 1


-- б) з застосуванням вбудованих функцiй.
func4 :: Integer -> Integer -> Bool
func4 x y = gcd x y == 1


-- Test
-- input: 3 9
-- False

-- input: 10 17
-- True

-- Висновок
-- На даній лабораторній роботі ми навчилися використовувати функції вищих порядків в мови Haskell.
-- В своїх завданнях ми застосували функції, що вбудовані в мову, для реалізації поставлених завдань.

