Un supermercado mayorista necesita un informe de ventas, para lo cual cuanta con una secuencia de caracteres y una secuencia de enteros, ambas contienen informacion del mes de JUNIO, para las distintas sucursales. La estructura de dichas secuencias es la siguiente:

Secuencia de caracteres:
Sucursal (cantidad indeterminada de caracteres) & cantidad de tickets (3 caracteres), sucursal & cantidad de tickets....FDS
Ejemplo:
**Resistencia&025**Barranqueras&123…FDS

Secuencia de enteros
Para cada ticket: Forma de pago (1: efectivo, 2: tarjeta débito y 3: tarjeta crédito) | Nro ticket | cantidad de artículos | importe
Ejemplo:
**1 | 2345 | 9 | 12500** | 3 | 2950 | 4 | 9864 |...FDS

Si considera necesario, puede utilizar una función ConvertiraNumero(caracter), que recibe como parámetro un carácter y devuelve un dato entero. No es necesario desarrollar la función.

Se solicita diseñar un algoritmo que:
1. Genere una secuencia de salida de enteros que contenga el número de ticket y el importe, cuando el importe sea mayor a 50.000.
2. Informe, para cada sucursal, cuál fue el ticket de mayor importe (y el importe).


Secuencia de caracteres:
**Sucursal**: caracteres;
&
cantidadTickets: AN(3);

**Mientras v <> & HACER**

Secuencia de enteros: 
**Forma de pago**: efectivo, tarjetaDebito, tarjetaCredito 
**Nro_Ticket**:
**CantArticulos**:
**Importe**:

Bucle principal NFDS:
**Mientras NFDS(Sec) HACER**

Secuencias
    **Resistencia&025**Barranqueras&123…FDS
        NrTicket    Importe
    **1 | 2345 | 9 | 12500** | 3 | 2950 | 4 | 9864 |...FDS

Secuencia de salida: NroTicket, Importe > 50.000
```bash
    ACCION sucursalesEj1 ES
        AMBIENTE
            secSucursal: secuencia de caracteres;
            secTicket: secuencia de enteros;
            secSalida: secuencia de enteros;
            vSucursal1: caracter;
            vTicket2: entero;
            i: entero;
            MetPago: N(1); #// Este contiene la forma de pago
            importe: entero;
            nomb_Sucursales: caracteres;
            cant_tickets_temp: entero;
            cantArticulos: entero;
        PROCESO
            ARR(secSucursal);
            ARR(secTicket);
            ARR(secSalida);
            AVZ(secSucursal, vSucursal1);
            AVZ(secTicket, vTicket2);
            CREAR(secSalida);
            MetPago: 0;
            #// Contadores
            importe := 0;

            #// Secuencia de caracteres
            MIENTRAS NFDS(secSucursal) HACER
                MIENTRAS (vSucursal1 <> "&") HACER
                    nomb_Sucursales := nomb_Sucursales + vSucursal1;
                    AVZ(secSucursal, vSucursal1);
                FIN MIENTRAS
                AVZ(secSucursal, digito1);
                AVZ(secSucursal, digito2);
                AVZ(secSucursal, digito3);
                cant_tickets := 100 * ConvertiraNumero(digito1) + 10 * ConvertiraNumero(digito2) + ConvertiraNumero(digito3);
                #// Tengo que definir la cantidad de tickets a enteros porque esta en caracteres.
            FIN MIENTRAS
            nomb_Sucursales := " ";
            
            #// cant_tickets := 100 * 1 + 10 * 2 + 3 = 100 + 20 + 3 = 123
            AVZ(secTicket, vTicket2);
            #// Secuencia de enteros
            PARA i = 1 HASTA cant_tickets HACER
                SI importe > 50000 ENTONCES
                    ESCRIBRIR(secSalida, nroTicket);
                    ESCRIBRIR(secSalida, importe);
                FIN SI
            FIN PARA
            #// Me faltaria seguir avanzando todas las secuencias.
            CERRAR(secSucursal);
            CERRAR(secSucursal);
            CERRAR(secSalida); 
    FIN ACCION
```
// Me faltaria cual es el mayor