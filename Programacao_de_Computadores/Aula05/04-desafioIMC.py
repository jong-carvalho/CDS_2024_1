
peso = float(input("Digite seu peso em kg: "))
altura = float(input("Digite sua altura em metros: "))
imc = peso/altura**2

if imc < 20:
    print("Abaixo do peso")
elif imc >=20 and  < 25:
    print("Peso normal")
elif imc < 30:
    print("Sobrepeso")
elif imc < 40:
    print("Obeso")
else:
    print("Obeso mórbido")