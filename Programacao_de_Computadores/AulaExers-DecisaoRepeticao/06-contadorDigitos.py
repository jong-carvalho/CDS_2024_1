numero = input("Digite um número: ")
contador = 0

for digito in numero:
    if digito.isdigit():
        contador += 1

print("O número", numero, "tem", contador, "dígitos.")


numero = input("Digite um número: ")
contador = 0

for digito in numero:
    if '0' <= digito <= '9':
        contador += 1

print("O número", numero, "tem", contador, "dígitos.")