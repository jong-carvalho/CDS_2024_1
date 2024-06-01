
num = []
soma = 0

print("Digite quantas notas quiser. Digite 0 para calcular a média das notas")
while True:
    n = int(input("Digite uma Nota: "))
    if n==0:
        break
    num.append(n)
    soma+=n

media = soma/len(num)
print("Média: %.2f" %media)
print("Números digitados: " ,num)