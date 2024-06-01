# Modifique o jogo de adivinhação (Exercício 6) para incluir um limite de 5 tentativas. Se o jogador não adivinhar o número nesse limite, o programa deve informar o número secreto.

import random

numero_secreto = random.randint(1, 100)
tentativas = 0
limite_tentativas = 5

while tentativas < limite_tentativas:
    palpite = int(input("Digite seu palpite: "))
    tentativas += 1

    if palpite == numero_secreto:
        print(f"Parabéns! Você acertou em {tentativas} tentativas.")
        break
    elif palpite < numero_secreto:
        print("Tente um número maior.")
    else:
        print("Tente um número menor.")

if tentativas == limite_tentativas:
    print(f"Fim das tentativas. O número secreto era {numero_secreto}.")
