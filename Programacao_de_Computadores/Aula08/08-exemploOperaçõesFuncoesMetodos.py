
saudacao = "Olá mundo!"

# As strings são imutáveis, o que significa que você não pode alterar uma string existente
# saudacao[0] = "J"

print("-----------------------------------------------------")

a = "\n Fizeram a atividade?"
print(a.strip())

print("-----------------------------------------------------")

b = "No próximo dia 05 vamos realizar nossa avaliação"
print("realizar" in b)
print("prova" in b)

print("-----------------------------------------------------")

c = "O Palmeiras não tem mundial"
print("c")
print(c.find("mundial"))
print(c.find("Corinthians"))

print("-----------------------------------------------------")

d = "Python é melhor que Java"
print(d.replace("Java", "Kotlin"))

# mas strings não são imutaveis? sim, pois ele não alterou d
print(d)

print("-----------------------------------------------------")

e = "São Paulo"
print(e.upper())

f = "GUARULHOS"
print(f.lower())

print("-----------------------------------------------------")

g = "1 2, 3, 4, 5, 6, 7"
print(g.split(","))

h = "Uma frase qualquer"
print(h.split())

print("-----------------------------------------------------")

i = "Deu lavagem ao macaco, banana pro porco, osso pro gato, sardinha ao cachorro, cachaça pro pato"
print(i.count("a"))