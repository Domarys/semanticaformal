-- Lista de exercicios 2

-- Exercicio 1

max1 :: Int -> Int -> Int
max1 x y
 | x > y = x
 | x <= y = y

--Exercicio 2

maiorVenda :: Int -> Int
maiorVenda n
 | n == 0 = 0
 | otherwise = max1(n)(maiorVenda(n-1))

--Exercicio 3

maxVenda :: Int -> Int
maxVenda n
 | n == 0 = 0
 | otherwise = max1(maiorVenda n)(maiorVenda (n-1))

--Exercicio 4

zeroVendas :: Int -> Int
zeroVendas n 
 | n == -1 = -1
 | (maiorVenda n) == 0 = n
 | otherwise = zeroVendas (n-1)

--Exercicio 5

verificaVenda :: Int -> Int -> Int
verificaVenda n s
 | n == -1 = -1
 | (maxVenda n) == s = n
 | otherwise = verificaVenda (n-1)(s)

--Exercicio 6

--Resposta: mesma estrutura mas com s == 0

--Exercicio 7

novoMaiorVendas :: Int -> Int -> Int
novoMaiorVendas m n
 | n == m = m
 | otherwise = max1(n)(maiorVenda(n-1))

--Exercicio 8

fatorial :: Int -> Int
fatorial n
 | n == 0 = 1
 | otherwise = n * (fatorial (n-1))

--Exercicio 9

mudada :: Int -> Int -> Int
mudada m n
 | m == n = m*n
 | otherwise = (m*n)*(mudada (m+2)(n-2))

--Exercicio 10

fibonacci :: Int -> Int
fibonacci n
let x = 0
 | x == n = x
 | otherwise = fibonacci(x+1) + fibonacci (x+2)