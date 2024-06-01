
notas = []
soma = 0

n = int(input("Entre com o número de notas: "))

for i in range(1,n+1):
    nota = float(input("Entre com a %dª nota: " %i))
    notas.append(nota)
    soma+=nota

print("Notas inseridas: ", notas)

media = soma/n

print("Média: %.2f" %media)