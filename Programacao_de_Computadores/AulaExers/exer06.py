numero = int(input("Digite um número inteiro positivo: "))
soma = 0

for i in range(1, numero+1, 2):
    soma += i

print(f"A soma dos números ímpares de 1 até {numero} é: {soma}")
