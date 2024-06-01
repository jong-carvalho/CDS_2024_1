
from random import *

num = randint(0, 1000)
i = 0
controle = 0

while controle == 0:
    i = i + 1
    x = int(input("Digite um número inteiro: "))
    if num == x:
        print(f"Parabéns, você acertou em {i} tentativas")
        controle = 1
    elif num > x:
        print("O número pensado é maior!")
    else:
        print("O número pensado é menor!")
