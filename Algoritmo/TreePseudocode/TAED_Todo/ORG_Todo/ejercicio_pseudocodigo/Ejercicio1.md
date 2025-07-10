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

{Este hay que pensarlo como un para} **PARA i=1 HASTA 2 HACER**
# id_masc : 2 caracteres;

Tipo animal : 1 caracter C(caninos), F (felinos). **Leerlo y avanzar** Se utilizaria un Si de comparador

Sexo: 1 caracter H, M. **Leerlo y avanzar**. 

Edad : 3 caracteres (en meses). **Usaria un para para iterar 3 veces: PARA i=0 HASTA 2 HACER**

Nombre: cantidad indefinida de caracteres, finaliza con #. **Mientras v <> # HACER y avz**

id_albergue: 3 caracteres. **Se utilizaria un PARA de iteracion 3**

La secuencia finaliza con *.



#########################################################





**Adopciones**
    id_mascFecha_adopcionDirección%Nro_telefono

Ejemplo:
    01240307EvergreenTerrace742%3624112233…*

Descripción de los datos: 

# id_masc: 2 caracteres; 

fecha adopción: 6 caracteres (aammdd),

dirección cantidad indefinida de caracteres, 

---

finaliza con %, 
nro teléfono: 10 caracteres. 

La secuencia finaliza con *.

---

Pueden existir mascotas rescatadas que no fueron adoptadas, con lo cual no aparecerán en la secuencia de adopciones. 







#########################################################


**Se pide** :

1. Generar una salida que contenga únicamente los perros (caninos) que han sido adoptados se desea saber: sexo, edad, nombre, telefono del adoptante. separar las adopciones en la salida con el signo $.
- Ejemplo Salida: M01Huesos#3624112233$

2. Generar una secuencia de enteros, con todos los id_masc de las mascotas no adoptados, cada ventana es un id (entero de dos dígitos)

3. Informar porcentaje de gatos y perros no adoptados sobre el total de no adoptados.






______________________________________________________________________________________________________________________________________________________________________________________________________________________________________
bash
#// Rescatados
#// Secuencia 1:
01|C|M|010|Huesos#|256| 03FM030Michi#230516345…*

#// Adoptados
#// Secuencia 2:
01|240307|EvergreenTerrace742%| 3624112233|…*

#// Secuencia de SALIDA
#// Secuencia 3:
M01Huesos#3624112233$

1. Generar una salida que contenga únicamente los perros (caninos) que han sido adoptados se desea saber: sexo, edad, nombre, telefono del adoptante. separar las adopciones en la salida con el signo $.
- Ejemplo Salida: M01Huesos#3624112233$

2. Generar una secuencia de enteros, con todos los id_masc de las mascotas no adoptados, cada ventana es un id (entero de dos dígitos)

3. Informar porcentaje de gatos y perros no adoptados sobre el total de no adoptados.

Accion: guarderia ES
AMBIENTE
bandera: booleano;



PROCESO
ARR(secResc);
ARR(secAdop);
CREAR(secPerros);
CREAR(secIds);
AVZ(secResc, vResc);
AVZ(secAdop, vAdop);
contPerros := 0;
contGatos := 0;
contTotla := 0;
// mi bucle general
mientras (vResc <> "*") y (vAdop <> "*") hacer
    // id_masc[2]Tipo_animal[1]Sexo[1]Edad[3]Nombre#id_albergue_asignado[3]
    // id_masc[2]Fecha_adopcion[6]Dirección%Nro_telefono[10]
    Para i = 1 hasta 2 hacer
        si (vResc == vAdop) entonces
            bandera:= V;
        sino
            bandera:= F;
        fin si
        idTemporal:= idTemporal + vResc; 01
        AVZ(secResc, vResc);
        AVZ(secAdop, vAdop);
    fin para
    si (!bandera) entonces
        ESC(secIds, idTemporal);
        contTotal:= contTotal + 1;
    fin si
    idTemporal:= "";
    si (vResc == "C") y bandera entonces 
        AVZ(secResc, vResc);
        // copio el sexo
        ESC(secPerros, vResc);
        AVZ(secResc, vResc);
        // copio la edad
        para (i = 1 hasta 3) hacer
            ESC(secPerros, vResc);
            AVZ(secResc, vResc);
        fin para
        // copio el nombre
        mientras (vResc <> "#") hacer
            ESC(secPerros, vResc);
            AVZ(secResc, vResc);
        fin mientras
        // avanzo el id del albergue
        para (i = 1 hasta 3) hacer
            AVZ(secResc, vResc);
        fin para
        // Avanzo toda la secuencia de adoptados hasta el numero de tel que es lo que me interesa
        mientras vAdop <> "%" hacer
            AVZ(secAdop, vAdop);
        fin mientras
        para (i = 1 hasta 10) hacer
            ESC(secPerros, vAdop);
            AVZ(secAdop, vAdop);
        fin para
    sino
        si (vResc == "C") y (!bandera) entonces
            contPerros:= contPerros + 1;
        sino si (vResc == "F") y (!bandera) entonces
            contGatos := contGatos + 1;
        fin si

        // Reinicio la secuencia
        mientras (vResc <> "#") hacer
            AVZ(secResc, vResc);
        fin mientras
        para (i = 1 hasta 3) hacer
            AVZ(secResc, vResc);
        fin para
        mientras (vAdop <> "%") hacer
            AVZ(secAdop, vAdop);
        fin mientras
        para (i = 1 hasta 10) hacer
            AVZ(secAdop, vAdop);
        fin para
    fin si
fin mientras

ESC("El porcentaje de gatos no adoptados es: ", (contGatos/contTotal) * 100);
ESC("El porcentaje de perros no adoptados es: ", (contPerros/contTotal) * 100);

CERRAR(secResc);
CERRAR(secAdop);
CERRAR(secPerros);
CERRAR(secIds);