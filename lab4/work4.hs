-- Лабораторна робота №4
-- студентки групи КН-31(2)
-- Валько Катерини
-- Варіант №1

-- 1. Знайти площу фігур.

data Font=Consolas | SourceCode | Lucida 
data Figure=Circle Float Float Float | Rectangle Float Float Float Float | Triangle Float Float Float Float Float Float
              | TextBox  Float Float Font String 

getLet :: Font->Float
getLet Consolas=3
getLet SourceCode=11
getLet Lucida=8

toFloat x = fromIntegral (length x) :: Float

getS :: [Figure]->[Float]
getS []=[]

getS ((Circle x y r):xs)=3.14*r*r:getS xs
getS ((Rectangle x1 y1 x2 y2):xs)=(x2-x1)*(y2-y1):getS xs
getS ((Triangle x1 y1 x2 y2 x3 y3):xs)=0.5*((x1-x3)*(y2-y3)-(x2-x3)*(y1-y3)):getS xs
getS ((TextBox x y f str):xs)=(getLet f)*(getLet f)*(toFloat str):getS xs


-- Результат тестування:
-- 1
-- Prelude> getS [Circle 1 1 1, Rectangle 0 2 3 0]
-- >  3.14, 6 


-- Висновок: під час даної лабораторної робооти я дізналась про нові типи та 
-- класи типів, нові знання використала на практиці.
