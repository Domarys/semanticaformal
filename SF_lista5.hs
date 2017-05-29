-- Lista de exercicios 5

data ArvBin = Nulo | No Int ArvBin ArvBin

arv :: ArvBin
arv  =  (No 1 
			(No 2 
				(No 4 Nulo Nulo)(No 5 Nulo Nulo))
			(No 3 
				(No 6 Nulo Nulo) Nulo))

emOrdem :: ArvBin -> [Int]
emOrdem Nulo = []
emOrdem (No x esq dir) = (emOrdem esq) ++ [x] ++ (emOrdem dir)

--Exercicio 1

dobraNodo :: ArvBin -> [Int]     -- tem que devolver como arvore?
dobraNodo Nulo = []
dobraNodo (No x esq dir) = ((dobraNodo esq) ++ [2*x] ++ (dobraNodo dir))

--Exercicio 2

maiorElemento :: ArvBin -> Int
maiorElemento Nulo = 0
maiorElemento (No x esq dir) = ((

--Exercicio 3
--Exercicio 4
--Exercicio 5
--Exercicio 6
--Exercicio 7
--Exercicio 8
--Exercicio 9