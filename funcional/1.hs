import Data.List

fib :: Int -> Int
fib n = fib' 0 1 n
fib' a b 0 = a
fib' a b n = fib' (a+b) a (n-1)

fatorial :: Int -> Int
fatorial 0 = 0 
fatorial 1 = 1
fatorial n = fatorial (n-1) * (n)

nfibs :: Int -> [Int]
nfibs n = take n (map fib [0..])

deleteN :: Int -> [a] -> [a]
deleteN _ []     = []
deleteN i (a:as)
   | i == 0    = as
   | otherwise = a : deleteN (i-1) as

insertAt :: Int -> Int-> [Int] -> [Int] 
insertAt z y xs = as ++ (y:bs)
                  where (as,bs) = splitAt z xs

sepList :: [Int]->([Int],[Int])
sepList = partition even


ord n = l1 n ++ l2 n
l1 [] = []
l1 (a:b) = if a `mod` 2 == 1 then a:l1 b else l1 b
l2 [] = []
l2 (a:b) = if a `mod` 2 == 0 then a:l2 b else l2 b

main = do
  print("Letra A")
  print(fib 10)
  print("Letra B")
  print(fatorial 25)
  print("Letra C")
  let lista = nfibs 6
  print(lista)
  print("Letra D")
  let lista1 = deleteN 8 lista
  print(lista1)
  print("Letra E")
  let lista2 = insertAt 1 3 lista
  print(lista2)
  print("Letra F")
  let lista3 = sepList lista
  print(lista3)
  print("Letra G")
  print(ord lista)
