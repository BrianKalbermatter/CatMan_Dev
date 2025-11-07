- Consigna 1.1.6
**Escriba un algoritmo que permita ingresar 3 valores numéricos y determine cuál es el mayor, el medio y el menor. (era el 3 de los complementarios)**
```
ACCION ES
    AMBIENTE:
        num_uno, num_dos, num_tres : N(3);
        menor, medio, mayor : N(3);
    PROCESO:
        ESCRIBIR('Coloque 3 numeros para determinar cual es el mas grande');
        ESCRIBIR('Coloque el valor Uno:');
        LEER(num_uno);
        ESCRIBIR('Coloque el valor Dos:');
        LEER(num_dos);
        ESCRIBIR('Coloque el valor Tres:');
        LEER(num_tres);

        //Comentario: Se determina el mayor
        Si (num_uno >= num_dos) Y (num_uno >= num_tres) ENTONCES
            mayor := num_uno;
            Si (num_dos >= num_tres) Entonces
                medio := num_dos;
                menor := num_tres;
            Sino
                medio := num_tres;
                menor := num_dos;
            Fin Si
            ESCRIBIR('El primer numero es mayor que los tres : ', num_uno);
        Fin Si
        //Comentario: Segunda ocacion de mayor
        Sino 
            Si (num_dos >= num_uno) Y (num_dos >= num_tres) ENTONCES
                mayor := num_dos;
                Si (num_uno >= num_tres) Entonces
                    medio := num_uno;
                    menor := num_tres;
                Sino
                    medio := num_tres;
                    menor := num_uno;
                FinSi
                ESCRIBIR('El segundo numero es mayor que los tres :', num_dos);
            FinSi
        Fin Si
        Sino
            mayor := num_tres;
            Si (num_uno >= num_dos) Entonces
                medio := num_uno;
                menor := num_dos;
            Sino
                medio := num_dos;
                menor := num_uno;
            FinSi
            ESCRIBIR('El mayor es el tercer numero :', num_tres);
        Fin Si
        ESCRIBIR("Mayor: ", mayor);
        ESCRIBIR("Medio: ", medio);
        ESCRIBIR("Menor: ", menor);
FIN ACCION
```