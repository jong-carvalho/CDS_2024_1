num = int(input("Digite um número: "))
primo = True

if num < 2:
    primo = False
else:
    for i in range(2, num):
        if num % i == 0:
            primo = False
            break

if primo:
    print(num, "é um número primo")
else:
    print(num, "não é um número primo")
