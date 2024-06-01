
lugaresVagos= [10, 2, 3, 4, 0]

x = 1

print("Bem vindos ao Cinecaro")

for s in lugaresVagos:
    print("Sala %d: %d lugares vagos" %(x, s))
    x+=1

while True:
    sala = int(input("Escolha uma sala (0 para sair): "))
    if sala==0:
        print("Até logo")
        break
    elif sala>len(lugaresVagos):
        print("Sala inválida!!\n")
    elif lugaresVagos[sala-1]==0:
        print("Desculpe! Sala lotada!\n")
    else:
        compra = int(input("Quantos ingressos você deseja (%d vagos) : " %lugaresVagos[sala-1]))
        if compra>lugaresVagos[sala-1]:
            print("Desculpe! Número de ingressos indisponível\n!!")
        elif compra<=0:
            print("Número inválido\n!!")
        else:
            lugaresVagos[sala-1]-=compra
            print("%d ingressos vendidos! Bom filme" %compra)
            break
print("Utilização das salas: ")
for x, s in enumerate(lugaresVagos):
    print("Sala %d - %d lugar(es) vago(s)" %(x+1,s))