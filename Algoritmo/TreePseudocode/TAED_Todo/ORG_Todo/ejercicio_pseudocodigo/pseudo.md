
```bash
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

```

pseudocodigo:
```bash
    ACCION guarderia ES
        AMBIENTE
            #//Mascotas rescatadas 
            secResc1: secuencia de caracteres;
            vResc1: caracteres;
            
            #//Mascotas adoptadas
            secAdopt2: secuencia de caracteres;
            vAdopt2: caracteres;
            
            #//Secuencia de salida
            secSal3: secuencia de caracteres;

            #//Todos los id_masc de las mascotas no adoptadas
            secid_masc4: secuencia de enteros;

            #//Contadores
            cantidad_gatos: enteros;
            cantidad_perros: enteros;
            Total_no_adoptados: enteros;
            
            #//Indice de los PARA
            i: enteros;

            #// Booleano(bandera)
            bandera: booleano;
            
            idTemporal: enteros;

        PROCESO
            #// Contadores se los resetea a 0
            cantidad_gatos := 0;
            cantidad_perros := 0;
            Total_no_adoptados := 0;
            idTemporal := 0;

            ARR(secResc1);
            ARR(secAdopt2);

            AVZ(secResc1, vResc1);
            AVZ(secAdopt2, vAdopt2);

            #// Secuencia de salida
            #// Secuencias de los perros 
            Crear(secSal3);
            #// Secuencia de salida de los enteros
            Crear(secId_masc4);


            #// Bucle Principal
            MIENTRAS (vResc1 <> '*') Y (vAdopt2 <> '*') HACER
                #// id_masc[2]Tipo_animal[1]Sexo[1]Edad[3]Nombre#id_albergue_asignado[3] [SECUENCIA 1]
                #// id_masc[2]Fecha_adopcion[6]Dirección%Nro_telefono[10]                [SECUENCIA 2]
                PARA i = 1 HASTA 2 HACER
                    #// Verificacion si las dos Listas(Rescatados y Adoptados) son iguales
                    SI(vResc1 == vAdopt2) ENTONCES    
                        bandera := V;
                    SINO
                        bandera := F;
                    FIN SI
                    #// Se usa un idTemporal en este caso para 
                    idTemporal := idTemporal + vResc; #//01 
                    AVZ(secResc1, vResc1);
                    AVZ(secAdopt2, vAdopt2);
                FIN PARA
                SI (!bandera) ENTONCES
                    ESC(secId_masc4, idTemporal);
                    Total_no_adoptados := Total_no_adoptados + 1;
                FIN SI
                
            FIN MIENTRAS
    FIN ACCION
```





# Corte de control:
LLAMO AL ANTERIOR siempre en corte de control
Escribo
Acumular los acumuladores
Resguardar
Y coloco en 0 los totales.

