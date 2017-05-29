-- Lista de exercicios 4

--Exercicio 1

membro :: [Int] -> Int -> Bool
membro [] _ = False
membro (a:x) y
 | a == y = True
 | otherwise = membro x y

--Exercicio 2

membroNum :: [Int] -> Int -> Int
membroNum [] _ = 0
membroNum (a:x) y
 | a == y = 1 + membroNum x y
 | otherwise = membroNum x y

--Exercicio 3

membro1 :: [Int] -> Int -> Bool
membro1 [] _ = False
membro1 x y
 | (membroNum x y) > 0 = True
 | otherwise = False

--Exercicio 4

--Exercicio 5

quicksort [] = []
quicksort (a:ax) = quicksort[x| x <- ax, x < a]
 ++ [a] ++
 quicksort [x| x <- ax, x >= a]

