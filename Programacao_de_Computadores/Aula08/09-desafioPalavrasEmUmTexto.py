
texto = input("Digite um texto: ")
pontuacao = [".", ",", ":", ";", "!", "?", ""]

# remove os sinais de pontuação
for p in pontuacao:
    texto = texto.replace(p, " ")

print(texto)

# split devolve lista com palavras como itens
numero_palavras = len(texto.split())
print("Número de letras: ", numero_palavras)