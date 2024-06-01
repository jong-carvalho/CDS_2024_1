# Crie um programa em Python que solicite um número inteiro positivo e exiba todos os números primos até esse número.

def eh_primo(num):
    if num < 2:
        return False
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False
    return True

limite = int(input("Digite um número inteiro positivo: "))

print(f"Números primos até {limite}:")
for i in range(2, limite+1):
    if eh_primo(i):
        print(i, end=" ")
