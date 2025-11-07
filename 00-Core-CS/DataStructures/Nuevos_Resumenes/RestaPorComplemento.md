# Resta es una Suma en Realidad:
**Resta binaria o a cualquier base**.
La resta se **transforma a la suma del minuendo + el Complemento Autentico del sustraendo**, una vez hecha esta suma se traza una linea del digito mas significativo del numero que tenga mas digitos, sea este el minuendo o el sustraendo, es posible que el resultado tenga un ultimo acarreo despues de la linea del resultado. En ese caso indica (1) que el resultado de la resta es positivo y sera el resultado obtenido en la suma sin considerar ese ultimo 1. Si ese ultimo resultado de la resta no existe (0), significa que el resultado de la resta es negativo el Complemento autentico - el resultado.

Entonces seria:
# Complemento Restringido: 
- **Componente Autentico** hay que sacar primero entonces seria para sacar:
Ejemplo:
En base 2 (Binario), resta usando el metodo del complemento 
**Numero de mayor numero binario que estoy trabajando**. 

# NOMBRES DE LA RESTA POR COMPLEMENTO:
  minuendo
− sustraendo
------------
  diferencia



     1101011  
   -
    (000)1100 -> **Este es el complemento autentico que hay que sacar.**
   -----------
   RESULTADO
- (Los ceros que estan entre parentesis (000) son los que se agregan para estar a la altura del otro numero con la cantidad de **DIGITOS**).

- Luego se coloca, el sustraendo en este caso el 1100 para sacar el **complemento restringido**. 

- Se coloca el numero mayor del numero del binario en este caso es el **1111111: Base2**(en este caso son 7 porque el minuendo es el mayor con digitos por lo tanto se colocan 7 -> 1). Quedaria:

      1111111
    - 
      0001100
    -----------
A1 =  1110011 Base (2

- **Se le llama A1 al complemento Restringido con el primer resultado para sacar el complemento autentico**.
- Se le suma 1 al A1 para obtener el complemento autentico.

Me llevo:
        11
    1110011
    +
          1
    --------
A2 =1110100

- Ahora si se saca la suma de:
    |1101011 -> Numero original Minuendo
    |+
A2 =|1110100
    |---------
   1|1011111 -> **Este es el resultado de la resta original**

- El 1 a la izquierda indica que el resultado es positivo.

# Complemento a la base -1

- Tenemos:

    (000)1100
    -
      1101011 -> **Complemento Autentico**.
     ---------
     RESULTADO 

     1111111 -> **Complemento Restringido**.
    -1101011 **(Ni siquiere se realiza una operacion y se coloca 1 por 0 y 0 por 1 nomas)**
    ---------
CR = 0010100
     +
           1
    ---------
CA =   10101

- Ahora se coloca:
El minuendo:
    + 1100
CA = 10101
   |-------
   |0100001

- Se coloca una linea y como hay **7 dijitos de mayor** se cuenta 7 lugares y se coloca un 0 al principio y como **hay un 0 el valor es negativo**.
     1111111
CA = -100001
 -----------
     1011110
     +
           1
    --------
CA = 1011111 -> **Este es el resultado de la resta** QUEDARIA: 
        1100
     1101011
    -------- 
    -1011111 -> **Este es el resultado de la resta original**


--------


# Complemento Autentico a otra base : **En este caso a base 6**.

-1324(6 **El complemento se lo vamos aplicar a numeros Z(enteros), negativos**.

- Primero escribimos la base, tantos ceros como tantos DIGITOS tenga mi numero como en este caso hay 4 digitos:
10000 -> **Se refiere a potencias de la base: Si bien es es 6.** Toda base expresada en si misma es (**10**.^4)
-
1324
 -----
A6 de -1324 es = 4232)6
- Le tengo que pedir 1 al vecino entonces quedaria 10 el primer 0. 4,5,10 = 2. **Porque el 6 = 10** asi se cuenta siempre... y los demas quedan en 5 porque 5 es el mayor pidiendole 1 a todos los otros 0.

# Complemento Restringido
- Va a estar conformado por el mayor numero de la base en este caso es el 5
 5555
-1324
     )6
 ------
A5 (4231)6) y para llegar al autentico de nuevo basta con sumarle 1 al restringido
+1
 ------
A6 -> 4232

# Metodo de resta por el complemento AUTENTICO:

