import Data.Char

-- 1)Crie uma função isVowel :: Char -> Bool que verifique se um caracter é uma vogal ou não.

isVowel :: Char -> Bool
isVowel c
  | c == 'a' = True  | c == 'A' = True
  | c == 'e' = True  | c == 'E' = True
  | c == 'i' = True  | c == 'I' = True
  | c == 'o' = True  | c == 'O' = True
  | c == 'u' = True  | c == 'U' = True
  | otherwise = False

-- 2)Escreva uma função addComma, que adicione uma vírgula no final de cada string contida numa lista.

addComma :: [String] -> [String]
addComma list = map (\s -> s ++ ",") list

--3)Crie uma função htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas como itens de lista em HTML. Resolva este exercício COM e SEM funções anônimas (lambda). 

-- Com
htmlListItemsCL :: [String] -> [String]
htmlListItemsCL list = map (\s -> "<LI>" ++ s ++ "</LI>") list

-- Sem
htmlListItemSL :: String -> String
htmlListItemSL s = "<LI>" ++ s ++ "</LI>"

htmlListItemsSL :: [String] -> [String]
htmlListItemsSL list = map htmlListItemSL list

-- 4)Defina uma função que receba uma string e produza outra retirando as vogais, conforme os exemplos abaixo. Resolva este exercício COM e SEM funções anônimas (lambda).

-- Com
removeVowelsLambda :: String -> String
removeVowelsLambda s = filter (\y -> isVowel y == False) s

-- Sem
removeVowels :: String -> String
removeVowels s = filter (not.isVowel) s

-- 5)Defina uma função que receba uma string, possivelmente contendo espaços, e que retorne outra string substituindo os demais caracteres por '-', mas mantendo os espaços. Resolva este exercício COM e SEM funções anônimas (lambda).

alterChars :: String -> String
alterChars s = map (\c -> if c == ' ' then ' ' else '-') s

-- 6)Escreva uma função firstName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu primeiro nome. Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome. Dica: estude funções pré-definidas em Haskell (List operations -> Sublists) em http://hackage.haskell.org/package/base-4.10.1.0/docs/Prelude.html#g:18. 

firstName :: String -> String
firstName s = takeWhile (/= ' ') s

-- 7)Escreva uma função isInt :: String -> Bool que verifique se uma dada string só contém dígitos de 0 a 9. Exemplos:

isInt :: String -> Bool
isInt s = length (filter (\c -> c > '9' || c < '0') s) == 0

-- 8)Escreva uma função lastName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu último sobrenome. Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome. 

lastName :: String -> String
lastName s = reverse (firstName (reverse s))

-- 9)Escreva uma função userName :: String -> String que, dado o nome completo de uma pessoa, crie um nome de usuário (login) da pessoa, formado por: primeira letra do nome seguida do sobrenome, tudo em minúsculas. Dica: estude as funções pré-definidas no módulo Data.Char, para manipulação de maiúsculas e minúsculas. Você precisará carregar este módulo usando import Data.Char no interpretador ou no início do arquivo do programa.

userName :: String -> String
userName s = map toLower ([head (firstName s)] ++ (lastName s))

-- 10)Escreva uma função encodeName :: String -> String que substitua vogais em uma string, conforme o esquema a seguir: a = 4, e = 3, i = 2, o = 1, u = 0.

getValue :: Char -> Char
getValue c
  | c == 'a' = '4'
  | c == 'e' = '3'
  | c == 'i' = '2'
  | c == 'o' = '1'
  | c == 'u' = '0'
  | otherwise = c

encodeName :: String -> String
encodeName s = map (\c -> getValue c) s

-- 11)Escreva uma função betterEncodeName :: String -> String que substitua vogais em uma string, conforme este esquema: a = 4, e = 3, i = 1, o = 0, u = 00. Exemplos de uso da função:

getBetterValue :: Char -> String
getBetterValue c
  | c == 'a' = "4"
  | c == 'e' = "3"
  | c == 'i' = "1"
  | c == 'o' = "0"
  | c == 'u' = "00"
  | otherwise = [c]

betterEncodeName :: String -> String
betterEncodeName s = concatMap (\c -> getBetterValue c) s

-- 12)Dada uma lista de strings, produzir outra lista com strings de 10 caracteres, usando o seguinte esquema: strings de entrada com mais de 10 caracteres são truncadas, strings com até 10 caracteres são completadas com '.' até ficarem com 10 caracteres

temp :: String -> String
temp s
 | length s > 10 = take 10 s
 | length s < 10 = temp (s ++ ".")
 | otherwise = s

func :: [String] -> [String]
func list = map temp list
