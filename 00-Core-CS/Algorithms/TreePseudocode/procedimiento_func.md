https://drive.google.com/drive/folders/1zYmDvYpP39-KUzhIftbB_pebIicrJOWD

# FUNCIONES Y PROCEDIMIENTOS
    Se llaman subacciones
        Funciones: Retornar algo un valor, pueden tener: (parametros) -> Dentro de los (Variables y valores)
        Procedimiento: No devuelve nada pero si pueden tener: (parametros) -> Dentro de los (Variables y valores)
Estructura de FUNCION:

# 32.01 
## Realice una función que dado un número devuelva su cuadrado.
---
```bash
ACCION cuadrado ES
    AMBIENTE:
        num: REAL;
        resultado: REAL;
    PROCESO:
        ESCRIBIR("Escribe el numero:");
        LEER(num);
        resultado:= devuelve_Cuadrado(num);
        ESCRIBIR("Resultado: ", resultado);

        ❗ Es una buena práctica de programación separar entrada/salida de lógica pura.
        // Aca no hay leer ni escribir sino que hay solo logica.
        FUNCION devuelve_Cuadrado(n :REAL):REAL ES
            AMBIENTE:
            PROCESO:
                devolver_Cuadrado:= n * n;
        FIN FUNCION
FIN ACCION
```

Aunque coloque dentro de los parametros de una **FUNCION** el mismo valor que esta en el programa principal (**PROCESO-Principal**) no son los mismos valores, aunque se llamen igual, viven en lugares distintos de la memoria. Esto se llama alcance o ambito de variables.

# 32.02
## Diseñe una función que devuelva la suma de los dígitos del número natural suministrado como parámetro.
```bash
ACCION suma_digitos ES
    AMBIENTE:
        numero_1: REAL;
        numero_2: REAL;
        resultado: REAL;
    PROCESO:
        ESCRIBIR('Coloca el numero 1:');
        LEER(numero_1);
        ESCRIBIR('Coloca el numero 2:');
        LEER(numero_2);
        resultado:=funct_SumaDigitos(numero_1, numero_2);
        ESCRIBIR('Suma de digitos', resultado);
    FUNCION funct_SumaDigitos(num1, num2: REAL): REAL ES
        PROCESO:
            funct_SumaDigitos:=num1+num2;
    FIN_FUNCION
FIN_ACCION
```



















# 32.03
## Diseñe una función que permita ingresar 3 números y devuelva el mínimo valor. El programa principal debe permitir que este proceso se repita la cantidad de veces que el usuario desee.
```bash
    ACCION tres_Numeros ES
        AMBIENTE:
            //Variable
            numero1: REAL;
            numero2: REAL;
            numero3: REAL;
            menor, medio, mayor: REAL;
            x: ENTERO;
            cantidad_repetir: ENTERO;

        PROCESO:
            ESCRIBIR("Coloca 3 Numeros de menor a mayor del 1 al 1000");
            LEER(numero1);
            LEER(numero2);
            LEER(numero3);
            ESCRIBIR("Coloque un numero que desea que la cantidad de veces quiera que se repita el bucle:");
            LEER(x);//1
            LEER(cantidad_repetir); //100
            resultado:= funct_tres_Numeros(numero1,numero2,numero3)
            ESCRIBIR(resultado);

        // Logica, pero no variables ni tipos de datos
        FUNCION funct_tres_Numeros(n1, n2, n3: REAL): REAL ES
            PROCESO:
                PARA x DESDE 1 HASTA cantidad_repetir HACER
                    //Comentario: Se determina el mayor, medio, menor
        Si (n1 >= n2) Y (n1 >= n3) ENTONCES
            mayor := n1;
            Si (n2 >= n3) Entonces
                medio := n2;
                menor := n3;
                Sino
                    medio := n3;
                    menor := n2;
            Fin Si
            //ESCRIBIR('El primer numero es mayor que los tres : ', n1);
        Fin Si

        //Comentario: Segunda ocacion de mayor, medio, menor 
            Si (num_dos >= n1) Y (n2 >= n3) ENTONCES
                mayor := n2;
                Si (n1 >= n3) Entonces
                    medio := n1;
                    menor := n3;
                Sino
                    medio := n3;
                    menor := n1;
                FinSi
                //ESCRIBIR('El segundo numero es mayor que los tres :', n2);
            FinSi
        Fin Si

        //Comentario: Tercera ocacion de mayor, medio, menor
            mayor := n3;
            Si (n1 >= n2) Entonces
                medio := n1;
                menor := n2;
            Sino
                medio := n2;
                menor := n1;
            FinSi
            //ESCRIBIR('El mayor es el tercer numero :', n3);
        Fin Si
        ESCRIBIR("Mayor: ", mayor);
        ESCRIBIR("Medio: ", medio);
        ESCRIBIR("Menor: ", menor);
        FIN_FUNCION
    FIN_ACCION
```




















# 32.04
## Elaborar una función que reciba un número entero y retorne -1 si el número es negativo. Si el número es positivo debe devolver una clave calculada de la siguiente manera: Se suma cada dígito que compone el número y a esa suma se le calcula el módulo 7. Por ejemplo: para la cifra 513, la clave será 5+1+3 =9; 9 mod 7 =2. Utilice la función para diseñar un algoritmo que permita leer varios valores y determine, para cada uno, si el número leído fue negativo o, si fue positivo, que clave le corresponde.

# 32.05
## Escribir una función que verifique si un caracter introducido es un dígito o no.

# 32.06
## Escribir una función que lea desde el teclado las unidades y el precio de un producto que se quiere comprar, y en función de las unidades introducidas calcule un descuento o no, según corresponda: cuando las unidades excedan media docena se aplicará 4% y el 10% cuando excedan la docena. La función debe devolver como resultado el valor del descuento o cero, en caso de que no corresponda.

# 32.07
## Repita el ejercicio del punto 5 pero utilice procedimiento en lugar de función.

# 32.08
## Crear un procedimiento que intercambie los valores de dos variables numéricas.

# 32.09 
## Desarrollar los procedimientos mostrar_0, mostrar_1,..., mostrar_9 que visualicen por pantalla, respectivamente, los números 0,1,...,9 en tamaño grande, tal y como se muestra a continuación:

# 32.10
## Escribir un único procedimiento "mostrar_nro" que reciba como parámetro un dígito y lo muestre por pantalla de la misma forma que se indica en el ejercicio 9.

# 32.11
## Diseñe un algoritmo que muestre un menú con las opciones sumar, restar, multiplicar y dividir, el algoritmo solicitará una opción y realizará la tarea elegida, se debe usar un procedimiento para mostrar el menú, pedir los datos en el algoritmo principal y después usar funciones para realizar los cálculos.

# 32.12 
## Escribir una función que lea desde el teclado las unidades y el precio que quiere comprar, y en función de las unidades introducidas le haga un descuento o no (cuando las unidades excedan media docena se aplicará 4% y el 10% cuando excedan la docena).





