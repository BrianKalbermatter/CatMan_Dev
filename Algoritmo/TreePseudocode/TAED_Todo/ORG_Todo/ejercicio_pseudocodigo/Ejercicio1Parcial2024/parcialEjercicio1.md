# Ejercicio 1
La provincia del chaco atendió la problemática de animales abandonados en las calles con la campaña “Adopta un compañero”. Como parte de esta gestión, solicitó a la UTN, FRRe una solución tecnológica para llevar registro de cuáles animales han sido adoptados.
Se cuenta con dos secuencias de caracteres. Una secuencia con todos los animales que la provincia ha rescatado y otra con los datos de las adopciones. Con las siguientes estructuras:
    
**Rescatados**
    id_mascTipo_animalSexoEdadNombre#id_albergue_asignado

Ejemplo:
    01CM010Huesos#25603FM030Michi#230516345…*

**Pero algo importante es que estas dos secuencias van en conjunto...**
01CM010Huesos#25603FM030Michi#230516345…*
01240307EvergreenTerrace742%3624112233…*


- Descripción de los datos: 
id_masc : 2 caracteres. {Este hay que pensarlo como un para} **PARA i=0 HASTA 2 HACER**

Tipo animal : 1 caracter C(caninos), F (felinos). **Leerlo y avanzar** Se utilizaria un Si de comparador

Sexo: 1 caracter H, M. **Leerlo y avanzar** Se utilizaria un Si de comparador

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
**Registro**
Secuencia1 : caracteres; // Rescatados provincial
Secuencia2 : caracteres; // Datos de los Adoptados
Secuencia3 : caracteres







Descripción de los datos: 

para la primera secuencia Rescatados puedo llegar a usar esta estructura

Mientras general que me va a abarcar toda la secuencia

mientras <> *

{

id_masc : 2 caracteres. [2 caracteres, 00 - 99] avz avz, para 2
Tipo animal : 1 caracter C(caninos), F (felinos). Leerlo y avz
Sexo: 1 caracter H, M. Leerlo y avz
Edad : 3 caracteres (en meses). Un “para” que itere 3 veces
Nombre: cantidad indefinida de caracteres, finaliza con #. mientras <> “#”
id_albergue: 3 caracteres. Un “para” que itere 3 veces 
La secuencia finaliza con **.
}*

*Si es lo que quiero, directamente va a la secuenciaDeSalida
**Adopciones**
    id_mascFecha_adopcionDirección%Nro_telefono

Ejemplo:
    01240307EvergreenTerrace742%3624112233…*

Descripción de los datos: 
id_masc: 2 caracteres; 
fecha adopción: 6 caracteres (aammdd),
dirección cantidad indefinida de caracteres, finaliza con %,

nro teléfono: 10 caracteres. 
La secuencia finaliza con *.

Pueden existir mascotas rescatadas que no fueron adoptadas, con lo cual no aparecerán en la secuencia de adopciones.

**Se pide**

:

1. Generar una salida que contenga únicamente los perros (caninos) que han sido adoptados se desea saber: sexo, edad, nombre, telefono del adoptante. separar las adopciones en la salida con el signo $.
    1. La sec de salida tiene que contener:
        1. Solo los caninos C [condicional de Si V == “C”][condicional de Si V <> “F”]
        2. sexoedadnombretelefono$
            1. sexo lo saco de la primer secuencia
            2. edad la saco de la primer secuencia
            3. nombre lo saco de la primer secuencia
            4. nro de telefono lo saco de la segunda secuencia
    2. Sabiendo esto, lo que tendria que hacer entonces es controlar en la secuencia de adoptados, que la mascota sea un Perro, 
    3. Mientras vResc <> “*” y vAdop <> “*” hacer
        1. para i = 0 hasta 2 hacer
        2. 01CM010Huesos#256 03FM030Michi#230 516345…*
        3. Si encuentro que no son iguales, ya sea porque el adopatdo en donde estoy parado es una gato por ejemplo, lo tengo que avanzar directamente
        4. *03240307EvergreenTerrace742%3624112233…**
            
            Si vResc == vAdop entonces
            
            AVZ(secResc, vResc);
            
            AVZ(secAdop, vAdop);
            
            bandera := V;
            
            Sino
            
            AVZ(secResc, vResc);
            
            AVZ(secAdop, vAdop);
            
            bandera:= F;
            
            Fin Si
            
            idRescTemp, idAdopTemp = C[2];
            
            idRescTemp := idRescTemp + vResc;
            
            idAdopTemp := idAdopTemp + vAdop;
            
            si bandera entonces
            
            Fin para
            
        
2. Ejemplo Salida: M01Huesos#3624112233$
3. Generar una secuencia de enteros, con todos los id_masc de las mascotas no adoptados, cada ventana es un id (entero de dos dígitos)
4. Informar porcentaje de gatos y perros no adoptados sobre el total de no adoptados.

Que variables voy a necesitar
Gatos = N[3];
Perros = N[3];










