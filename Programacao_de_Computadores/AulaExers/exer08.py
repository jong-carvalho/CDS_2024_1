#  Implemente o jogo da forca em Python. O programa deve escolher aleatoriamente uma palavra, e o jogador tenta adivinhar a palavra, inserindo uma letra por vez. O jogo deve exibir a palavra com as letras adivinhadas e informar quantas tentativas ainda estão disponíveis.

import random

palavras = ["python", "programacao", "desafio", "forca", "aleatorio"]
palavra_secreta = random.choice(palavras)
letras_adivinhadas = ['_'] * len(palavra_secreta)
tentativas_maximas = 6
tentativas = 0

while '_' in letras_adivinhadas and tentativas < tentativas_maximas:
    letra = input("Digite uma letra: ").lower()

    if letra.isalpha() and len(letra) == 1:
        if letra in palavra_secreta:
            for i in range(len(palavra_secreta)):
                if palavra_secreta[i] == letra:
                    letras_adivinhadas[i] = letra
            print("".join(letras_adivinhadas))
        else:
            tentativas += 1
            print(f"Tentativas restantes: {tentativas_maximas - tentativas}")
    else:
        print("Por favor, digite uma letra válida.")

if '_' not in letras_adivinhadas:
    print("Parabéns! Você adivinhou a palavra.")
else:
    print(f"Fim do jogo. A palavra era: {palavra_secreta}.")
