# Crie um programa que peça um número inteiro ao usuário e calcule a soma dos seus dígitos.

numero = int(input("Digite um número inteiro: "))
soma = 0

while numero != 0:
    digito = numero % 10
    soma += digito
    numero //= 10

print(f"A soma dos dígitos do número é: {soma}")