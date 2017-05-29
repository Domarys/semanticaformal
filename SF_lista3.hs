-- Lista de exercicios 3

--Exercicio 1

dobraLista :: [Int] -> [Int]
dobraLista [] = []
dobraLista (a:x) = (2*a) : dobraLista x

--Exercicio 2

tamanho :: [Int] -> Int
tamanho[] = 0
tamanho(a:x) = 1 + tamanho x

--Exercicio 3

produtoLista :: [Int] -> Int
produtoLista [] = 1
produtoLista (a:x) = a * produtoLista x

--Exercicio 4

andLista :: [Bool] -> Bool
andLista [] = True
andLista (a:x) = a && andLista x

--Exercicio 5

concatLista :: [[Int]] -> [Int]
concatLista [] = []
concatLista (a:x) = a ++ concatLista x

--Exercicio 6

inverteLista :: [Int] -> [Int]
inverteLista [] = []
inverteLista (a:x) = inverteLista x ++ [a]
