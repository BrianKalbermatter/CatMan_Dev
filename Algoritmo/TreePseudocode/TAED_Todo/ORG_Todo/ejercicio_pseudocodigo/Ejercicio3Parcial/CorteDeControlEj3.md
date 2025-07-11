# Ejercicio 2
Un supermercado mayorista que cuenta con un sistema de atencion en cajas necesita un informe de ventas, para lo cual cuenta con el archivo secuencial VENTAS que contiene informacion de todos los tickets emitidos durante el mes de JUNIO. Para cada venta se registra:

-------------------------------------------------------------------------
**Dice que tengo que crear un informe de ventas en un archivo con los registros estos**

VENTAS, Ordenado por Nro de Caja, Forma de pago, Nro de ticket

[ NroDeCajas | FormaDePago(EF, TD y TC) | NroDeTicket | FechaDeVenta | CantidadDeArticulos | ImporteDeLaVenta ]
**Estos son los que tengo que tener dentro de un registro**
-------------------------------------------------------------------------
**Los tipos de pagos**
Nota: EF: Efectivo, TD: tarjeta debito y TC: TarjetaCredito.

# Se pide escribir un algoritmo que permita:
1. Imprimir un informe del total de articulos vendidos por caja y por forma de pago.

2. Crear un fichero de salida que contenga Nro de caja, total articulo que se pagaron en efectivo y total articulo que se pagaron con tarjetas (TD o TC). 
(1 registro por caja).
    | NroDeCaja | TotalArticulosEfectivos | TotalArticulosTarjetas |

3. Informar cuales son las cajas que tuvieron mayor cantidad de articulos vendidos en efectivos que con tarjetas.


Pseudocodigo
```bash
    ACCION EjercicioSuper ES
        AMBIENTE
            TOTALES_EFECTIVO, TOTALES_TARJ_DEB, TOTALES_TARJ_CRE: ENTERO;

            TotalEfectivoCaja, TotalTarjetaCaja: ENTERO;

            #// Este no llamo al anterior porque es el primero
            Ventas = Registro
                NroDeCajas: N(20);
                FormaDePago = Registro
                    Efectivo: real;
                    TarjetaDebito: Real;
                    TarjetaCredito: Real;
                FIN_REGISTRO
                #// Aca va otro registro con los diferentes tipos de pagos
                NroDeTicket: N(100);
                FechaDeVenta: N(6);
                CantidadDeArticulo: entero;
                ImporteDeLaVenta: Real;
            FIN_REGISTRO
            

            #// Archivo de Ventas
            Archivo: Archivo de Ventas ordenado por  
            RegVentas: Ventas;
            RegFormaDePago: FormaDePago
            
            #// Siempre en corte de control
            Subaccion 
            #// Llamo al anterior metodo(PROCEDIMIENTO)
            #// Escribo
            
            #// Acumular los acumuladores
            #// Resguardar
            #// Coloco en 0 los totales
            
        
        PROCESO

    FIN ACCION 

```










Pseudocodigo
```bash

Razonamiento:
-> Corte caja y otro por forma de pago
-> Crear un archivo de salida que contenga Nro de caja, total de articulos efectivo y total de articulos tarjeta
-> Voy a necesitar contadores para:
TOT_EF, TOT_TARJETA, TOT_CAJA, TOT_FORMA_DE_PAGO
-> Resguardo de Tarjetas D Y C, y Resguardo de caja



Accion CORTE_CONTROL ES:
AMBIENTE
#// Se crean los procedimientos
Subaccion CORTE_FDPAGO es:
    ESC("Para la forma de pago ", R_FDPAGO);
    ESC("El numero de articulos vendidos fue: ", TOT_FORMA_DE_PAGO_TEMP);
    TOT_FORMA_DE_PAGO:= TOT_FORMA_DE_PAGO + TOT_FORMA_DE_PAGO_TEMP;
    R_FDPAGO:= REG_VENTA.fdpago;
    TOT_FORMA_DE_PAGO_TEMP:= 0;
fin procedimiento

Subaccion CORTE_CAJA es:
    // Este es el corte superior, tengo que llamar al inferior
    CORTE_FDPAGO;
    // Escribir
    ESC("Para la caja nro ", R_CAJA);
    ESC("La cantidad de ventas fue: ", TOT_CAJA_TEMP);
    // Acumular los totales
    TOT_CAJA:= TOT_CAJA + TOT_CAJA_TEMP;
    // Resguardar el registro nuevo
    R_CAJA:= REG_VENTA.nro_caja;
    // poner a 0 los temporales
    TOT_CAJA_TEMP:= 0;
fin procedimiento

#// Los tipos de registros
fecha: REGISTRO
    dd: N(2)
    mm: N(2)
    aa: N(2)
fin registro

reg_venta: REGISTRO
    nro_caja: N(10);
    fdpago: AN(2) (EF, TD, TC);
    nro_ticket: N(10);
    f_venta: fecha;
    cant_articulos: N(10);
    importe_venta: real;
fin registro

reg_caja: REGISTRO
    nro_caja: N(10);
    tot_ef: N(10);
    tot_tar: N(10);
fin registro

arch_ventas: Archivo de ventas ordenado por nro_caja, fdpago, nro_ticket, f_venta, cant_articulos, importe_venta;
arch_caja: Archivo de caja ordenado por nro_caja, tot_ef, tot_tar;
REG_VENTA: reg_venta;
REG_CAJA: reg_caja;
TOT_EF, TOT_TARJETA, TOT_CAJA, TOT_FORMA_DE_PAGO, TOT_FORMA_DE_PAGO_TEMP, TOT_CAJA_TEMP: N(10);
R_CAJA: N(10);
R_FDPAGO: AN(2);
MAS_EF_TARJETA:= booleano;
PROCESO

ABRIR/E(arch_ventas);
LEER(arch_ventas, REG_VENTA);
CREAR(arch_caja);
TOT_EF:= 0;
TOT_TARJETA:= 0;
TOT_CAJA:= 0;
TOT_FORMA_DE_PAGO:= 0;
R_CAJA:= REG_VENTA.nro_caja;
R_FDPAGO:= REG_VENTA.fdpago;

mientras NFDA(arch_ventas) hacer
    si R_CAJA <> REG_VENTA.nro_caja entonces
        CORTE_CAJA;
        REG_CAJA.nro_caja:= R_CAJA;
        REG_CAJA.tot_ef:= TOT_EF;
        REG_CAJA.tot_tar:= TOT_TARJETA;
        ESC(arch_caja, REG_CAJA);
        si TOT_EF > TOT_TARJETA entonces
            ESC("La caja nro: ", R_CAJA, " tuvo mas ventas en efectivo que tarjeta");
        fin si
    sino si R_FDPAGO <> REG_VENTA.fdpago entonces
        CORTE_FDPAGO;
    fin si
    si REG_VENTA.fdpago = "EF" entonces
        TOT_EF:= TOT_EF + REG_VENTA.cant_articulos;
    sino
        TOT_TARJETA:= TOT_TARJETA + REG_VENTA.cant_articulos;
    fin si
    LEER(arch_ventas, REG_VENTA);
fin mientas
CORTE_CAJA;

CERRAR(arch_venta);
CERRAR(arch_caja);

// Me falto tiempo para completar el algoritmo pero dejo al menos la estructura principal armada del corte de control.
```

