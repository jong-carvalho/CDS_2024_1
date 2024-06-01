numero = int(input("Digite um número decimal: "))
base = input("Escolha a base de conversão (binário, octal ou hexadecimal): ")

if base == "binário":
    resultado = bin(numero)
elif base == "octal":
    resultado = oct(numero)
elif base == "hexadecimal":
    resultado = hex(numero)
else:
    resultado = "Opção inválida"

print(f"O número {numero} em base {base} é: {resultado}")
