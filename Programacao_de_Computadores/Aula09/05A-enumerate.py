nintendo = ["Donkey Kong", "The Legend of Zelda", "Mario Kart", "Pokémon"]

print(enumerate(nintendo))

for x,y in enumerate(nintendo):
    print(y, " está na posição ", x)




print("------------------------------------------")

print(nintendo)
nintendo.remove("Pokémon")
print(nintendo)