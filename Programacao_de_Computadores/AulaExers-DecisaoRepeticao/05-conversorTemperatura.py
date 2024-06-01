temp = float(input("Digite a temperatura: "))
opcao = input("Digite C para Celsius ou F para Fahrenheit: ")

if opcao.upper() == 'C':
    resultado = (temp - 32) * 5 / 9
    print("Temperatura em Celsius:", resultado)
elif opcao.upper() == 'F':
    resultado = (temp * 9 / 5) + 32
    print("Temperatura em Fahrenheit:", resultado)
else:
    print("Opção inválida")
