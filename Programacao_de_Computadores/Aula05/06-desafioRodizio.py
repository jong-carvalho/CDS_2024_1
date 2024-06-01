
placa = int(input("Digite os quatro dígitos da placa do veículo: "))


if placa==1 or placa==2:
    print("O veículo não pode circular às segundas-feiras")
elif placa==3 or placa==4:
    print("O veículo não pode circular às terças-feiras")
elif placa==5 or placa==6:
    print("O veículo não pode circular às quartas-feiras")
elif placa == 7 or placa == 8:
    print("O veículo não pode circular às quintas-feiras")
else:
    print("O veículo não pode circular às sextas-feiras")