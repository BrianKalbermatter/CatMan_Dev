# Ejercicio 2
Además de la información previamente mencionada, se dispone de un archivo que registra las
adopciones organizadas por departamento, localidad, barrio y adoptante. Este archivo también
proporciona datos adicionales como el tipo de animal (canino o felino), y la cantidad de
mascotas que ya tiene el adoptante.

Procedimiento:

corte de control localidad y barrio

Departamento | localidad | barrio | dni adoptante | id_mascota | Tipo (C,F) | cant anteriores

**SE DISPONE DE UN ARCHIVO DE REGISTROS**
cont_perros (acumuladores);
cont_gatos (acumuladores);
total_gatosadot;

## Se solicita:
1. Informar la cantidad de adopciones por localidad y barrio ; discriminando por perros y gatos.
2. Informar el porcentaje de gatos adoptados en la provincia.
3. Generar un nuevo archivo con el siguiente formato, considerando solo las adopciones
por familias que ya tenían más de 3 mascotas.
Departamento | Localidad | Cantidad de adopciones

```bash
ACCION EJERCICIO2 ES
    AMBIENTE

        ADOPCIONES = Registro
            depa: AN(20);
            local: AN(20);
            barrio: AN(20);
            dni_adopt: N(8);
            id_mascota: entero;
            tipo: AN(2);
            cant_anteriores: N(10);
        fin registro
        #// Archivo de adopciones
        Archivo: Archivo de ADOPCIONES ordenado por depa, local,barrio, dni_adopt, id_mascota, tipo, cant_anteriores; 
        
        REGadopt: ADOPCIONES

        SUBACCION localidad ES
        
        FIN_SUBACCION

    PROCESO
        
```

