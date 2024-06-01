num1 = float(input("Digite o primeiro número: "))
num2 = float(input("Digite o segundo número: "))
op = input("Escolha a operação (+, -, *, /): ")

if op == '+':
    resultado = num1 + num2
elif op == '-':
    resultado = num1 - num2
elif op == '*':
    resultado = num1 * num2
elif op == '/':
    resultado = num1 / num2
else:
    resultado = "Operação inválida"

print("Resultado:", resultado)
