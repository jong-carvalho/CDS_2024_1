frase = input("Digite uma frase: ")
vogais = 0
consoantes = 0

for char in frase:
    if char.isalpha():
        if char.lower() in 'aeiou':
            vogais += 1
        else:
            consoantes += 1

print("Número de vogais:", vogais)
print("Número de consoantes:", consoantes)
