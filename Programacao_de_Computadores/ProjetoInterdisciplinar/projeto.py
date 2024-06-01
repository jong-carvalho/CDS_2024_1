nome = input("Digite seu nome: ")

print('Olá', nome, '. \nSeja bem vindo ao nosso sistema de conversão de bases!')

print('Por favor, escolha uma opção: ')
print('1 - Converter de DECIMAL para BINÁRIO')
print('2 - Converter de DECIMAL para HEXADECIMAL')
print('3 - Converter de DECIMAL para OCTADECIMAL')
print('4 - Converter de BINÁRIO para DECIMAL')
print('5 - Converter de HEXADECIMAL para DECIMAL')
print('6 - Converter de OCTADECIMAL para BINÁRIO')
print('0 - Para encerrar o sistema!')
escolha = int(input('Digite sua escolha:'))

# DECIMAL PARA BINARIO
# A conversão de decimal para binário (ou seja da base 10 para a base 2), consiste em
# dividir progressivamente o valor decimal por 2, obtendo-se um resultado e um resto.
# De referir que o resultado em cada iteração terá sempre o valor de 0 ou 1. Deve-se
# dividir o número até que o quociente da divisão seja igual a 0 (zero).
def decimal_para_binario(decimal):
    if decimal == 0:
        return '0'
    binario = ''
    while decimal > 0:
        resto = decimal % 2
        binario = str(resto) + binario
        decimal = decimal // 2
    return binario

# BINARIO PARA DECIMAL
# A conversão de números do sistema binário para decimal é feito através de
# multiplicações. Para isso, pode-se montar uma tabela, conforme ilustrado abaixo,
# para facilitar o cálculo. Usa-se a base 2 e eleva-se ao expoente, de acordo com a
# posição que o algarismo ocupa no número. A inserção dos expoentes inicia-se da
# direita para a esquerda, sendo que o 1º. expoente é zero, depois 1 e assim, por
# diante. Depois efetua-se o somatório, conforme exibido abaixo.
# O exemplo a seguir converte 100110(2) para decimal, que neste caso o resultado é
# 38(10).
def binario_para_decimal(binario):
    decimal = 0
    expoente = 0
    for bit in reversed(binario):
        decimal += int(bit) * (2 ** expoente)
        expoente += 1
    return decimal

# DECIMAL PARA OCTADECIMAL
# A conversão de decimal para octal (ou seja da base 10 para a base 8), consiste em
# dividir progressivamente o valor decimal por 8, obtendo-se um resultado e um resto.
# De referir que o resultado em cada iteração terá sempre um valor menor que 7.
def decimal_para_octal(decimal):
    if decimal == 0:
        return '0'
    octal = ''
    while decimal > 0:
        resto = decimal % 8
        octal = str(resto) + octal
        decimal = decimal // 8
    return octal

# OCTADECIMAL PARA DECIMAL
# A conversão de números da base octal para a base decimal é semelhante a conversão de
# binário para decimal, porém utilizamos 8 no lugar do número 2. Vamos converter o
# número 5422(8) para a base decimal seguindo os mesmos passos da conversão anterior
def octal_para_decimal(octal):
    decimal = 0
    expoente = 0
    for digito in reversed(octal):
        decimal += int(digito) * (8 ** expoente)
        expoente += 1
    return decimal





while escolha > 0:

    numero = int(input('Digite o número que deseja converter: '))

    if escolha == 1:
        print('--- Conversão de DECIMAL para BINÁRIO ---')
        print("O número decimal", numero, "em binário é:", decimal_para_binario(numero))
        escolha = 0
        
    elif escolha == 2:
        print('Conversão de DECIMAL para HEXADECIMAL')
    elif escolha == 3:
        print('Conversão de DECIMAL para OCTADECIMAL')
        print("O número decimal", numero, "em octal é:", decimal_para_octal(numero))
    elif escolha == 4:
        print('Conversão de BINÁRIO para DECIMAL')
        print("O número binário", numero, "em decimal é:", binario_para_decimal(str(numero)))
        escolha = 0

    elif escolha == 5:
        print('Conversão de HEXADECIMAL para DECIMAL')
    elif escolha == 6:
        print('Conversão de OCTADECIMAL para DECIMAL')
        print("O número octal", numero, "em decimal é:", octal_para_decimal(str(numero)''))
    else:
        print('Opção Inválida.')
        print('Por favor, escolha uma opção: ')
        print('1 - Converter de DECIMAL para BINÁRIO')
        print('2 - Converter de DECIMAL para HEXADECIMAL')
        print('3 - Converter de DECIMAL para OCTADECIMAL')
        print('4 - Converter de BINÁRIO para DECIMAL')
        print('5 - Converter de HEXADECIMAL para DECIMAL')
        print('6 - Converter de OCTADECIMAL para BINÁRIO')
        print('0 - Para encerrar o sistema!')
        escolha = int(input('Digite sua escolha:'))
print('Obrigado por utilizar nosso sistema, volte sempre!')