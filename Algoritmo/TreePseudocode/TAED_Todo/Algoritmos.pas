EJERCICIOS ACT-Arch
Dada la siguiente secuencia de datos con el siguiente formato:

Nº de socio
Nº de teléfono
Apellido y Nombre
Carrera (ISI - IEM - IQ - LAR)
Domicilio
Cantidad de unidades prestadas
Correspondiente a los alumnos socios de la Biblioteca, generar la secuencia de los alumnos de “ISI” que tengan prestadas más de 4 unidades bibliográficas.



Necesito un registro 

arch1 
mientras NFDA(reg1)


















🧩 NIVEL 1 – LECTURA Y FILTRADO SIMPLE
🧮 Ejercicio 1:

Tenés un archivo ALUMNOS con:


			legajo | nombre | carrera | promedio

Generar un listado con todos los alumnos de la carrera ISI cuyo promedio sea mayor o igual a 8.

👉 Pistas para pensar:

Solo necesitás un archivo.

Se recorre con un MIENTRAS NO FIN_DE_ARCHIVO.

Se usa un SI para filtrar.

No hay cortes ni mezclas.

RESPUESTA:

✅ACCION NIVEL_1 ES
	AMBIENTE
		reg_alumnos = REGISTRO
			legajo: N(4);
			nombre: AN(15);
			carrera: AN(30); // (AN) Alfanumerico
			promedio: N(10); // (N)Numerico
		fin_registro
		
		arch_alumnos: ARCHIVO de reg_alumnos;
		reg: reg_alumnos;
	PROCESO
		ABRIR E(arch_alumnos); // Se abre nomas el archivo porque no dice en ningun lado que quiere que lo copie a otro lado
		LEER(arch_alumnos, reg); // Leer al comienzo para arrancar el archivo
		MIENTRAS (NFDA(arch_alumnos, reg)) HACER
			SI (reg.carrera = "ISI") Y (reg.promedio >= 8) ENTONCES
				ESCRIBIR('Alumno de ISI, 'reg.nombre', mayor o igual a 8');
				SINO
					ESCRIBIR('Su promedio es menor o distinto de 8.');
			FIN_SI
			LEER(arch_alumnos, reg);// Leer al final para avanzar en el archivo.
		FIN_MIENTRAS
		CERRAR(arch_alumnos);
FIN_ACCION



🧮 Ejercicio 2:

Dado un archivo PRODUCTOS:

			cod_producto | descripcion | stock | stock_minimo

Informar todos los productos cuyo stock esté por debajo del stock mínimo.

👉 Pensar: igual que el anterior, pero con dos condiciones dentro del SI.

RESPUESTA:

ACCION ej_2 ES
	AMBIENTE
		reg_productos = REGISTRO
			cod_producto: ENTERO;
			descripcion: AN(100);
			stock: ENTERO;
			stock_minimo: ENTERO;
		FIN_REGISTRO
		reg: reg_productos;
		arch_producto: ARCHIVO de reg_productos;
	PROCESO
		ABRIR E(arch_producto);
		LEER(arch_producto, reg);
		MIENTRAS NFDA (arch_producto) HACER
			SI (reg.stock < reg.stock_minimo) ENTONCES
				ESCRIBIR(reg.descripcion, 'esta por debajo del stock minimo.');
				SINO
					ESCRIBIR('Esta por arriba del stock minimo');
			FIN_SI
			LEER(arch_producto, reg);
		CERRAR(arch_producto);
FIN_ACCION


⚙️ NIVEL 2 – CORTE DE CONTROL
🧮 Ejercicio 3:

Un archivo VENTAS:

id_vendedor | id_producto | cantidad | importe


Ordenado por id_vendedor.
Se pide emitir un listado con el total vendido por cada vendedor y un total general.

👉 Pistas:

Corte de control por id_vendedor.

Acumuladores parciales y globales.

MIENTRAS anidado: uno principal, otro dentro para el corte.


RESPUESTA:
necesito un registro con un archivo
ordenarlos id_auxiliar_ventas

ACCION ej_3 ES
	AMBIENTE
	
		reg_VENTAS = REGISTRO
			id_vendedor: N(3);
			id_producto: N(3);
			cantidad: N(100);
			importe: N(100);
		FIN_REGISTRO
	
		reg: reg_VENTAS;
		arch_VENTAS: ARCHIVO de reg_VENTAS;
		
		// AUXILIARES
		id_auxiliar_ventas: ENTERO; // Es una variable de control o clave de grupo
		total_cant: ENTERO;
		total_importe: ENTERO;
	
	PROCESO
		ABRIR E(arch_VENTAS)
		LEER(arch_VENTAS, reg);
		MIENTRAS NO FDS(arch_VENTAS) HACER
			// INICIALIZAR CONTADORES
			contador_vendedor_actual:= reg.id_vendedor
			MIENTRAS (NO FDA(arch_VENTAS)) Y (id_vendedor = id_auxiliar_ventas) HACER
				total_cant:= total_cant + reg.cantidad; 
				total_importe:= total_importe + reg.importe;
			LEER(arch_VENTAS, reg);
		FIN_MIENTRAS
		CERRAR(arch_VENTAS)
FIN_ACCION



🧮 Ejercicio 4:

Archivo CLIENTES:

id_sucursal | id_cliente | saldo


Ordenado por id_sucursal.
Emitir un informe con el saldo total por sucursal y total general.

👉 Pensar:

Corte de control doble: por sucursal y general.

Acumuladores por nivel.

RESPUESTA:

ACCION ej_4 ES
	AMBIENTE
		reg_CLIENTE = REGISTRO
			id_sucursal: ENTERO;
			id_cliente: ENTERO;
			saldo: ENTERO;
		FIN_REGISTRO
		reg: reg_CLIENTE;
		archivo_cliente: ARCHIVO de reg_CLIENTE
		auxiliar_sucursales: ENTERO; // Debe de ser del mismo tipo que el campo clave.
	PROCESO
		ABRIR(archivo_cliente);
		MIENTRAS (NFDA(archivo_cliente)) HACER
			MIENTRAS (NFDA(archivo_cliente)) Y (reg.id_sucursal = archivo_cliente) HACER
			
FIN_ACCION






🔁 NIVEL 3 – MEZCLA SECUENCIAL (DOS ARCHIVOS)
🧮 Ejercicio 5:

Dos archivos secuenciales ordenados por codigo:

ARCHIVO_A

ARCHIVO_B

Generar un nuevo archivo UNION_AB que contenga todos los registros de ambos archivos, sin duplicados.

👉 Pistas:

Estructura típica de mezcla:
SI A < B → grabar A
SI A = B → grabar uno solo
SI A > B → grabar B.

🧮 Ejercicio 6:

Dos archivos secuenciales ordenados por codigo:

ARCHIVO_CLIENTES

ARCHIVO_BAJAS

Eliminar de CLIENTES todos los que aparecen en BAJAS.

👉 Pistas:

Mezcla secuencial excluyente.

Cuando cod_cliente está en ambos, no grabás.

Si no está en BAJAS, copiás.

🧮 NIVEL 4 – ACTUALIZACIÓN (INCLUYENTE)
🧮 Ejercicio 7:

Archivo maestro CLIENTES
y archivo de novedades MOVIMIENTOS
(ordenados por id_cliente).

Actualizar:

cod_mov = 0 → alta

cod_mov = 99 → baja

1..98 → modificar saldo

Informar cantidad de altas y errores.

👉 Pistas:

Estructura de mezcla secuencial.

Tres caminos: <, =, >.

Un bucle interno para varios movimientos del mismo cliente.

Reescritura lógica o física.

🧮 Ejercicio 8 (más realista):

Banco con:

CLIENTES (id_sucursal, id_cliente, saldo, fecha_baja)

MOVIMIENTOS (id_sucursal, id_cliente, cod_mov, tipo, monto)

Actualizar saldos, realizar altas y bajas lógicas.
Contar cuántos clientes nuevos hubo por sucursal y total.

👉 Pistas:

Igual al anterior, pero con clave doble (id_sucursal + id_cliente).

Tenés que comparar por ambas claves.

Puede haber varios movimientos por cliente.

📊 NIVEL 5 – INFORMES Y AGRUPACIONES
🧮 Ejercicio 9:

El banco pide un informe agrupado por sucursal y categoría de cliente:

Saldo < 100.000 → Estándar

Saldo < 1.500.000 → Oro

Resto → Diamante

Mostrar cantidad por categoría y total por sucursal.

👉 Pistas:

Corte de control por id_sucursal.

Contadores por categoría.

Acumuladores globales.

🧮 NIVEL 6 – BONUS (TRIPLE ENTRADA)
🧮 Ejercicio 10:

Tenés:

CLIENTES

MOVIMIENTOS

SUCURSALES

Generar un informe de movimientos por sucursal, mostrando:

nombre de la sucursal (buscar en archivo indexado)

cantidad de clientes dados de alta, baja y modificados durante el mes.

👉 Pistas:

Archivo maestro y movimientos → mezcla (actualización).

Archivo indexado → solo para buscar descripción.

Corte de control por sucursal.