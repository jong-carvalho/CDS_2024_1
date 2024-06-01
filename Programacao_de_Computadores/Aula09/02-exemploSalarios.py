
mes = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
totalSalario = 0

for i in range(12):
    salario =  float(input("Digite o salário de %s R$" %mes[i]))
    totalSalario = totalSalario + salario


decimoTerceiro = (totalSalario / 12)
tercoFerias = (totalSalario / 12)* 0.33333

print("O decimo terceiro é ", decimoTerceiro)
print("O decimo terceiro é ", tercoFerias)