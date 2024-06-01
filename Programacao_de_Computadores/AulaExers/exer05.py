# Desenvolva uma calculadora simples em Python que permita ao usuário realizar operações básicas (soma, subtração, multiplicação, divisão) entre dois números.

while True:
    num1 = float(input("Digite o primeiro número: "))
    operacao = input("Digite a operação (+, -, *, /) ou 's' para sair: ")

    if operacao == 's':
        break

    num2 = float(input("Digite o segundo número: "))

    if operacao == '+':
        resultado = num1 + num2
    elif operacao == '-':
        resultado = num1 - num2
    elif operacao == '*':
        resultado = num1 * num2
    elif operacao == '/':
        if num2 != 0:
            resultado = num1 / num2
        else:
            print("Erro: divisão por zero.")
            continue
    else:
        print("Operação inválida.")
        continue

    print(f"Resultado: {resultado}")
