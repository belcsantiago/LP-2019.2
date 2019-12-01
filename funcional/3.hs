lista_frases :: String -> [String]
lista_frases []  = []
lista_frases xxs@(x:xs)  | x == '\n' = lista_frases xs
                    | otherwise = ys : lista_frases rest
                      where (ys, rest) = break (== '\n') xxs

reverter_lista :: [a] -> [a]  
reverter_lista [] = []  
reverter_lista (x:xs) = reverter_lista xs ++ [x]

inverterPoema :: String -> [String]
inverterPoema x = reverter_lista . lista_frases $ x

printListLines :: [String] -> IO()
printListLines [] = return ()
printListLines (x:xs) = do  putStrLn x
                            printListLines xs

main = do
  printListLines(inverterPoema "Nao te amo mais.\nEstarei mentindo dizendo que\nAinda te quero como sempre quis.\nTenho certeza que\nNada foi em vao.\nSinto dentro de mim que\nVoce nao significa nada.\nNao poderia dizer jamais que\nAlimento um grande amor.\nSinto cada vez mais que\nJa te esqueci!\nE jamais usarei a frase:\nEU TE AMO!\nSinto, mas tenho que dizer a verdade\nE tarde demais...")
