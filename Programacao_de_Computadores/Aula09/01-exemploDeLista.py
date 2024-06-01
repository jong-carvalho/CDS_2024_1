
lista1 = [10, 20, 30, 40]
lista2 = ["programação", "computadores", "python"]
lista3 = ["oi", 2.0, 2, 5, "exemplo"]
x = len(lista1)
for i in range(x):
    print(lista1[i])
print("--------------------------------------------")


nomes = []

for i in range(5):
    n = input("Digite um nome: ")
    nomes.append(n)

print(nomes)


print("--------------------------------------------")

cidades = ['Guarulhos', 'Uberlândia', 'Santa Catarina', 'Recife']

for i in range(4):
    print(cidades[i])

print("--------------------------------------------")

for i in cidades:
    print(i)