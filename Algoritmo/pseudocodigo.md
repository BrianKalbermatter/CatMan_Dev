Notas importantes:
    Fijarse siempre que es lo que conoce el usuario y lo que le estas mostrando.
###########################################################################################################################################################################
Estructura del pseudocodigo: 

Accion ejercicioCinco es 
    Ambiente
        ALFA, BETA: Real;
        JOTA, I, L: Entero;
    Proceso
        ALFA := 2.5; 
        JOTA := 2;
        I := 2 * JOTA;
        L := JOTA * I;
        ALFA := ALFA + BETA;

        ESCRIBIR('El valor de "I" es =', I);
        ESCRIBIR('El valor de "L" es =', L);
        ESCRIBIR('El valor de "ALFA" y "BETA" es =', ALFA);
    Fin Proceso
Fin Accion
###########################################################################################################################################################################

###########################################################################################################################################################################
//Consigna del problema:
//Se desea calcular la superficie de un trapecio, para la cual se ingresa la longitud de ambas bases y la altura. En base a la fórmula:
//S=(Bmay+Bmen) × h sobre 2

Finalizando el proceso, emitir dicha superficie y los valores ingresados.
Accion ejercicio_1.1.5.4 es
    Ambiente
        base_mayor:Entero
        base_menor:Entero
        altura:Entero
        superficie_trapecio:Real
    Proceso
        Esc('Base Mayor: '); Leer(base_mayor);

        Esc('Base Menor: '); Leer(base_menor);
        
        Esc('Altura: '); Leer(altura);
        
        superficie_trapecio:= (base_mayor + base_menor) * altura / 2
        Esc('La superficie es igual a: ', superficie_trapecio)
    Fin Proceso
Fin Accion
###########################################################################################################################################################################

###########################################################################################################################################################################
//Consigna 1.1.5.5
//Se desea calcular el valor de la sección (S) de un conductor, la cual se determina en función de la corriente eléctrica I y de la conductividad C del material (C=I/S). Además, a la sección así obtenida se le incrementa un 25% por razones de seguridad.

Accion actividad_Dos es
    Ambiente
        s:Real
        i:Real
        //Comentario: c=i/s
    Proceso
        ESCRIBIR('El valor de la sección (S) de un conductor es: ')
        LEER(s)
        
        ESCRIBIR('El valor de la corriente electrica I es: ')
        LEER(i)

        //Comentario: Incremento del 25%
        c := i/s
        resultado := c + (c * 25/100)
        ESCRIBIR('Mas el 25% es: ', resultado)
    Fin Proceso
Fin Accion
##############################################################################################################################################################################################
//Ejercicio 1.1.5.3

//Se desea comprar una PC y una impresora. Calcular el precio total: el cual está dado por la suma de los precios de costos, los porcentajes de ganancia del vendedor y un 21% de IVA. Supóngase una ganancia del vendedor del 12% por la PC y 7% por la impresora. Se leen los costos y se imprimen el precio total de ventas.

Accion PcAndImpresoras es
    Ambiente 
        
































##############################################################################################################################################################################################
//Ejercicio 1.1.5.6
// Realizar un programa que lea dos número complejos, (a,b) y (c,d), y calcule su producto:(a,b)∗(c,d)=(ac−db,ad+ bc)




























##############################################################################################################################################################################################
// Escriba un algoritmo que halle la media geométrica de tres valores X, Y, Z. Este debe emitir los tres valores por separado y luego el valor medio. La media geométrica es igual a (X×Y×Z)/3



























# Estructuras Secuenciales
##############################################################################################################################################################################################

// Ejercicio 1.1.5.1
// Escribir un programa que permita calcular el precio de un artículo para un año dado, considerando que la inflación es del 4 por 100 anual.

// La fórmula del precio es: P = C * (1 + R) ^ (N - A)

// C - Precio actual.
// N - Año futuro.
// R - Tasa de Inflación.
// A - Año actual.
























##############################################################################################################################################################################################
//Ejercicio 1.1.5.2
// Las raíces de una ecuación de segundo grado ax2+bx+c=0 son reales si y sólo si el discriminante dado por (b2−4ac) no es negativo. Se desea leer el valor de los coeficientes a, b, c e imprimir el resultado del discriminante. Realizar prueba de escritorio.





















##############################################################################################################################################################################################
//Ejercicio 1.1.6
// Escriba un algoritmo que permita ingresar 3 valores numéricos y determine cuál es el mayor, el medio y el menor. (era el 3 de los complementarios)


























##############################################################################################################################################################################################

##############################################################################################################################################################################################
// Ejercicio 1.1.7
// Escriba un algoritmo que acepte dos números, calcule la suma e imprima el mensaje de acuerdo al resultado obtenido.

// Suma <= 50
// Suma > 50 y <= 100
// Suma > 100 y <= 200
// Suma > 200































##############################################################################################################################################################################################

##############################################################################################################################################################################################







