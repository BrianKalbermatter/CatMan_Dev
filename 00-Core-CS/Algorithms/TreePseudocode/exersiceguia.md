🔷 SECUENCIAS SEGÚN SU PROCESAMIENTO

    Definidas:

        Son secuencias cuyo tamaño es conocido desde el comienzo.

        Se recorren con una estructura controlada por contador (por ejemplo, un PARA).

        Ejemplo: recorrer los primeros 10 elementos de una lista.

        Se usan cuando sabés cuántos elementos hay antes de procesarla.

    Indefinidas:

        No se conoce de antemano la cantidad de elementos.

        Terminan por una condición de corte o marca de fin (como un FDS).

        Se procesan con estructuras tipo MIENTRAS (pre-test) o REPETIR (post-test).

        Ejemplo: leer caracteres de una secuencia hasta que aparezca “Z”.

🔷 INDEFINIDAS: PURAS vs IMPURAS

Solo aplican a secuencias indefinidas.

    Puras:

        La secuencia termina únicamente por una marca de fin.

        No hay otra condición que interrumpa el proceso.

        Ejemplo: leer caracteres hasta que aparezca “.” como fin de texto.

    Impuras:

        Hay más de una condición de corte, o se puede forzar una salida anticipada.

        A veces la secuencia tiene una marca de fin, pero también puede terminar si se detecta un error, un dato inválido, etc.

        Ejemplo: leer números hasta encontrar -1 (fin) o si el número es mayor a 1000, salir.

🔷 SUBSECUENCIAS SEGÚN SU ESTRUCTURA

    Esquemáticas:

        Las subsecuencias aparecen una después de otra, y el fin de una indica el comienzo de la siguiente.

        Son como bloques alineados, uno a continuación del otro.

        Ejemplo: Nombre seguido por DNI: "JUAN-12345678FDS" (el guion marca el fin del nombre).

    Jerárquicas:

        Hay subsecuencias dentro de otras, formando una relación de inclusión o pertenencia.

        Ejemplo: Una oración que contiene palabras → "Hola buen día.", donde “Hola”, “buen” y “día” son subsecuencias (palabras) dentro de otra (la oración).

# PROCEDIMIENTO
```bash
ACCION principal ES
    DEFINIR nota COMO ENTERO
    REPETIR
        LEER(nota)
        SI nota <> -1 ENTONCES
            llamar verificar_aprobado(nota)
        FIN SI
    HASTA QUE nota = -1
FINACCION

PROCEDIMIENTO verificar_aprobado(nota: ENTERO)
    SI nota >= 6 ENTONCES
        ESC("Aprobado")
    SINO
        ESC("Desaprobado")
    FINSI
FINPROCEDIMIENTO
```

# SUBSECUENCIA
```bash
ACCION promedio_por_alumno ES
    DEFINIR nota, suma, cant COMO ENTERO
    DEFINIR alumno COMO CARACTER
    REPETIR
        LEER(alumno)
        SI alumno <> "*" ENTONCES
            suma := 0
            cant := 0
            LEER(nota)
            MIENTRAS nota <> -1 HACER
                suma := suma + nota
                cant := cant + 1
                LEER(nota)
            FINMIENTRAS
            ESC("Promedio de", alumno, "es:", suma / cant)
        FIN SI
    HASTA QUE alumno = "*"
FINACCION
```


