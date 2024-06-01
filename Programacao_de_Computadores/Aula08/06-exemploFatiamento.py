
fruta = "morango"

# inclui o 0 mas não o 2
print(fruta[0:2])

# omitinho o primeiro começa da primeira posição
print(fruta[:3])

# omitinho o segundo argumento vai até a última
print(fruta[3:])

# fatia da primeira posição até a ultima excluindo uma posição
print(fruta[0:-1])

# fatia da primeira posição até a ultima excluindo 3 posições
print(fruta[0:-3])

num = input("Digite uma palavra: ")
num = num[::-1]
print(num)