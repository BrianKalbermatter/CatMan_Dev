#Ejercicio 1.1.7

#Escriba un algoritmo que acepte dos números, calcule la suma e imprima el mensaje de acuerdo al resultado obtenido.
#Suma <= 50
#Suma > 50 y <= 100
#Suma > 100 y <= 200
#Suma > 200

def __init__(self, num1, num2):
    self.num1 = num1
    self.num2 = num2

num1 = int(input("Ingrese el primer número: "))
num2 = int(input("Ingrese el segundo número: "))
def algoritmo(num1, num2):
    resultado = num1 + num2
    if resultado <= 50:
        print("Suma <= 50")
    elif resultado > 50 and resultado <= 100:
        print("Suma > 50 y <= 100")
    elif resultado > 100 and resultado <= 200:
        print("Suma > 100 y <= 200")
    else:
        print("Suma > 200")
    return resultado
algoritmo(num1, num2)
####
#Ejercicio 1.1.8

# Escriba un algoritmo que permita conocer la edad de una persona, con solo ingresar la fecha de nacimiento y la fecha actual, ambas en el formato: DIA, MES, AÑO


























####
#Ejercicio 1.1.5.6
# Realizar un programa que lea dos número complejos, (a,b) y (c,d), y calcule su producto:(a,b)∗(c,d)=(ac−db,ad+ bc)












