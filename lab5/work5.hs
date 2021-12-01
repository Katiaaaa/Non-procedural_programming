-- Лабораторна робота №5
-- студентки групи КН-31
-- Валько Катерина
-- Варіант №1

-- Завдання 1. Реалiзувати: Переписати список справа наліво

-- a: введення з клавіатури і результат в консолі

Console_Console :: IO()
Console_Console=do
    putStrLn "Input:"
    str<-getLine
    putStrLn(reverse str)

-- b: дані з файлу і результат в консолі

File_Console :: IO()
File_Console=do
    str<-readFile "input.txt"
    putStrLn(reverse str)

-- c: введення з клавіатури і результат у файлі

Console_File :: IO()
Console_File=do
    putStrLn "Input:"
    str<-getLine
    writeFile "output.txt" (reverse str)

-- d: дані з файлу і результат у файлі

File_File :: IO()
File_File=do
    str<-readFile "input.txt"
    writeFile "output.txt" (reverse str)


-- Висновок: Ознайомились з модульною органiзацiєю програм та засобами введення-
-- виведення.
