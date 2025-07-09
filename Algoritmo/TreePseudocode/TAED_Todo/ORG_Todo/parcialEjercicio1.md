# Ejercicio 1
La provincia del chaco atendió la problemática de animales abandonados en las calles con la campaña “Adopta un compañero”. Como parte de esta gestión, solicitó a la UTN, FRRe una solución tecnológica para llevar registro de cuáles animales han sido adoptados.
Se cuenta con dos secuencias de caracteres. Una secuencia con todos los animales que la provincia ha rescatado y otra con los datos de las adopciones. Con las siguientes estructuras:
    
**Rescatados**
    id_mascTipo_animalSexoEdadNombre#id_albergue_asignado

Ejemplo:
    01CM010Huesos#25603FM030Michi#230516345…*

Descripción de los datos: 
id_masc : 2 caracteres. 
Tipo animal : 1 caracter C(caninos), F (felinos). 
Sexo: 1 caracter H, M. 
Edad : 3 caracteres (en meses). 
Nombre: cantidad indefinida de caracteres, finaliza con #. 
id_albergue: 3 caracteres. 
La secuencia finaliza con *.

**Adopciones**
    id_mascFecha_adopcionDirección%Nro_telefono

Ejemplo:
    01240307EvergreenTerrace742%3624112233…*

Descripción de los datos: 
id_masc: 2 caracteres; 
fecha adopción: 6 caracteres (aammdd),
dirección cantidad indefinida de caracteres, 
finaliza con %, nro teléfono: 10 caracteres. 
La secuencia finaliza con *.

Pueden existir mascotas rescatadas que no fueron adoptadas, con lo cual no aparecerán en la secuencia de adopciones. 
**Se pide** :

1. Generar una salida que contenga únicamente los perros (caninos) que han sido adoptados se desea saber: sexo, edad, nombre, telefono del adoptante. separar las adopciones en la salida con el signo $.
- Ejemplo Salida: M01Huesos#3624112233$

2. Generar una secuencia de enteros, con todos los id_masc de las mascotas no adoptados, cada ventana es un id (entero de dos dígitos)

3. Informar porcentaje de gatos y perros no adoptados sobre el total de no adoptados.



# Analisis:
Son Secuencias LINEALES 
Necesito hacer un **Registro**
Secuencia1 : caracteres; // Rescatados provincial
Secuencia2 : caracteres; // Datos de los Adoptados
Secuencia3 : caracteres












pseudocodigo:
```bash

```