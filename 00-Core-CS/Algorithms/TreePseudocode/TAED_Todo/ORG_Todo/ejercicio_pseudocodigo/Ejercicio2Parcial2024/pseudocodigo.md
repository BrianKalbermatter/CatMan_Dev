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
# Corte de control:
Siempre en corte de control

Llamo al anterior metodo
Escribo
Acumular los acumuladores
Resguardar
Y coloco en 0 los totales.

Que va a tener a quien? por ser el contenido mas grande llama al contenido mas chico.

