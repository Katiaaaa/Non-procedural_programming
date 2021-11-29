--Лабораторна робота №3
-- Виконала студентка групи КН-31 Валько Катерина

-- 1.1 Переписати список справа наліво.

-- а) без застосування 
reverse1 :: [a] -> [a]
reverse1 [] = []
reverse1 [x] = [x]
reverse1 (x:xs) = reverse1 xs++ [x]

-- б) з застосуванням вбудованих функцiй.
reverses :: [a] -> [a]
reverses = reverse

-- Test
-- input: [1,2,3,4]
-- [4,3,2,1]

-- input: [4,5]
-- [5,4]



-- 2.1 Перемішування списку з n елементів: після першого розмістити останній,
-- після другого передостанній тощо. Наприклад вхідний список "abcde1234" має бути
-- трансформований у "a4b3c2d1e"

-- а) без застосування 
mix :: [a] -> [a]
mix [] = []
mix [x] = [x]
mix (x:xs) = [x] ++ mix(changes xs)


-- б) з застосуванням вбудованих функцiй.
mix2 :: [a] -> [a]
mix2 [] = []
mix2 [x] = [x] 
mix2 (x:xs) = [x] ++ mix2(reverse xs)  


-- Test
-- input: [1,2,3,4,5,6,7]
-- [1,7,2,6,3,5,4]

-- Висновок
-- На даній лабораторній роботі ми навчилися використовувати функції вищих порядків в мови Haskell.
-- В своїх завданнях ми застосували функції, що вбудовані в мову, для реалізації поставлених завдань.
