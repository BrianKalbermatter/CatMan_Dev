# TEORIA:
1. # ¿Cuál es la diferencia entre una estructura de control secuencial y una repetitiva?
**Rta:**
La principal diferencia es cómo controla la ejecución de las acciones que contiene. La primera define un orden de ejecución, y se respeta esa secuencia. La segunda repite la ejecución un número de veces dependiendo de la condición.

2. # ¿En qué casos es más conveniente usar un ciclo Pretest en lugar de uno manejado por contador?
**Rta:**
Por definición la estructura de control PRE-TEST es para cantidad de iteraciones indefinidas, y la MANEJADA POR CONTADOR es para cantidades definidas. Por eso analizando el problema, si es factible determinar a priori la cantidad de iteraciones podemos tomar la mejor decisión.

3. # ¿Qué papel juega la variable de control en los bucles manejados por contador?
**Rta:**
La variable de control juega un papel muy importante en esa estructura ya
que a través de la misma se controla el número de iteraciones que se
producen.

4. # ¿Qué sucede si no se actualiza la condición de corte en un ciclo Pretest?
**Rta:**
Pueden pasar dos cosas. Primero, si la condición se mantiene siempre
FALSA nunca ingresa a la estructura, y esto deriva en que las acciones
contenidas nunca se ejecutarán. Segundo, si la condición se mantiene
VERDADERA, y nunca cambia, esto produce un error muy común en
programación llamado “BUCLE INFINITO” y eso es un error.

5. # ¿Qué diferencia hay entre una estructura manejada por contador y una Post-test si se quiere validar datos al menos una vez?
**Rta:**
Como la estructura POST-TEST siempre ejecuta las acciones contenidas al
menos 1 vez, en este caso no habría diferencia en cuanto al cumplimiento del
objetivo planteado. Ambas pueden cumplirlo sin inconvenientes. Solo
podemos ver diferencias en la sintaxis de cada estructura.

6. # ¿Qué técnicas se pueden aplicar para asegurar que los datos ingresados sean correctos dentro de un ciclo?
**Rta:**
Las técnicas más comunes para controlar datos son:
● Definir condiciones en la estructura iterativa que validen los datos, sino
que se mantenga iterando hasta que suceda.
● Utilizar condicionales dentro de una estructura iterativa para validar
varios datos y salir de la iteración cuando se cumpla.

7. # ¿Qué consecuencias puede traer una mala elección del tipo de ciclo repetitivo en un algoritmo?
**Rta:**
Consecuencias comunes:
● Producir cantidad de iteraciones erróneas.
● Definir las iteraciones como definidas o indefinidas determina la
estructura de control a elegir, si se elige mal se pueden producir
resultados erróneos (ejemplo: procesar más o menos datos de
entrada, no tratar algunos elementos de un conjunto, etc.).

8. # ¿Por qué es importante definir correctamente la condición de salida de un ciclo pretest?
**Rta:**
Si se define mal la condición pueden pasar dos cosas:
● Primero, si la condición se mantiene siempre FALSA nunca ingresa a
la estructura, y esto deriva en que las acciones contenidas nunca se
ejecutarán.
● Segundo, si la condición se mantiene VERDADERA, y nunca cambia,
esto produce un error muy común en programación llamado “BUCLE
INFINITO” y eso es un error

9. # Describa cómo un mal diseño de la condición de corte en un ciclo puede llevar a un bucle infinito.
**Rta:**
Una condición mal planteada puede conducir al bucle infinito si se diseña de
manera incorrecta, esto supone expresar de manera equivocada la condición
y no tener un acción interna, o expresada erróneamente, que produzca el
cambio de valor de verdad de la condición, o sea de FALSO pase a
VERDADERO y viceversa.

10. # ¿Qué estructuras de control usaría para analizar múltiples indicadores de rendimiento por semana? Justifique.
**Rta:**
Cuando se necesita tratar varios datos en una línea de tiempo es de gran
utilidad utilizar estructuras de control iterativas, que pueden estar
acompañadas de las otras estructuras dependiendo el problema a resolver.
Las estructuras iterativas son de gran utilidad para repetir acciones a
ejecutarse por cada instancia de trabajo, en este caso cada indicador.

11. # ¿Qué criterios se deben considerar para elegir una estructura repetitiva manejada por contador en vez de una pretest?
**Rta:**
El criterio de definición se basa en conocer o poder definir previamente la
cantidad de iteraciones. Si esto es factible lo más conveniente es utilizar una
estructura de control MANEJADA POR CONTADOR.

12. # ¿Qué características debe tener un ciclo para poder procesar una cantidad indefinida de datos correctamente?
**Rta:**
Se deben establecer la condición de control de la estructura y una acción
interna que modifique el valor de verdad de dicha condición (FALSO <->
VERDADERO). La condición debe detectar cuando no haya más datos por
procesar, y la acción interna para ayudar con el proceso individual de cada
elemento y así poder avanzar hacia el final.

