# Resolver este problema:

```bash
ACCION ejercicio_7 ES
    
    AMBIENTE:

        termino :REAL;
        total :REAL;
        x: ENTERO;
        j: ENTERO;
        i: ENTERO;
        fact: REAL;
    
    PROCESO:
    
    termino:= 0;
    
        PARA j:= 1 HASTA 5 HACER
            //COMENTARIO: HAY ALGO MAL EN LA SUMA DEL TOTAL ESTA SUMANDO MAS 1 + ( x ** i ) / fact * i
            fact:= 1.0;
            total:= 1.0;
            ESCRIBIR('Ingrese el valor de x a calcular (e^x): ');
            LEER(x);
    
            PARA i := 1 HASTA 20 HACER

                fact:= fact*i;
                termino:= (x**i)/fact;
                total:= total+termino;
            
            FIN_PARA
    
            ESCRIBIR('El resultado de e^' ,x, ' = ', total);
    
        FIN_PARA

FIN_ACCION
```