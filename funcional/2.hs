string_list :: String -> [String]
string_list []  = []
string_list xxs@(x:xs)  | x == ' ' = string_list xs
                    | otherwise = ys : string_list rest
                      where (ys, rest) = break (== ' ') xxs

reverte_list :: [a] -> [a]  
reverte_list [] = []  
reverte_list (x:xs) = reverte_list xs ++ [x]

lista_string :: [String] -> String
lista_string [] = ""
lista_string (x:xs) | xs == [] = x
                    | otherwise = x ++ " " ++ lista_string xs

inverterTexto :: String -> String
inverterTexto s = lista_string . reverte_list . string_list $ s

main = do
  print(inverterTexto "la vou eu")