# Enunciado: Desenvolva um jogo simples em que o programa escolhe um número aleatório entre 1 e 100, e o usuário tenta adivinhar. O programa deve fornecer dicas indicando se o palpite é maior ou menor que o número escolhido.

import random

numero_secreto = random.randint(1, 100)

while True:
    palpite = int(input("Digite seu palpite: "))

    if palpite == numero_secreto:
        print("Parabéns! Você acertou!")
        break
    elif palpite < numero_secreto:
        print("Tente um número maior.")
    else:
        print("Tente um número menor.")
