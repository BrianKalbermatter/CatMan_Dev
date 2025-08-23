ACCION nombre_accion ES
    AMBIENTES:
Subacciones
- Son acciones que forman parte de una accion procipal
- Son modulos que estan escritos para ejecutar algunas tareas
- Se evitan con ellas la repeticion de codigo innecesario.

Funciones
Procedimientos
PROCEDIMIENTO incremento(parametros) ES
    i:= i+2;
FIN_PROCEDIMIENTO
va entre el ambiente y el proceso los PROCEDIMIENTOS
PROCESO:
    ESCRIBIR();
    incremento;
    ESCRIBIR();
- Parametros: Constantes o variables que toma la subaccion para que realice su tareas.

- PARAMETROS -> Formales o ficticios = Entradas
- ARGUMENTOS -> Actuales, argumentos o reales -> se le asigna argumento a los que son de salidas
- Tienen que tener el mismo orden de entrada que de salida para hacer los calculos, tienen que ser respetados porque no son correctos.

PARAMETRO POR VALOR:
    - El valor original se hace en el procedimiento o en la funcion.
PARAMETRO POR REFERENCIA:
    - Se comparte valores.
PROCEDIMIENTO nombre(referencia:entero,valor:entero)

Si no necesitas que se actualice las variables por lo tanto se hace por valor y no por referencia.

Insiden en las variables originales las referencias. Utilizando bien las variables en procedimiento y en las funciones.

- Lo ideal es que no se usen variables globales sino que se creen las propias variables de referencias o por valores dentro de las subacciones

# SECUENCIA DE DATOS ELEMENTALES

- Conjunto de datos relacionados entre si que se almacena en memoria externa y deben cumplir con ciertas caracteristicas.
- Son todos del mismo tipos, cada elemento es una variable del mismo tipo, simples.
- Se almacenan en memorias externas.

Arrancar - un elemento a la vez **V-E-R** V despues E despues R

- Un objeto del conjunto, llamando primero, se distingue de los demas
- El acceso a este elemento permite el acceso todos los demas elementos(sucesores) de la secuencia
Ejemplo:
**23 - 18 - 18 - 17 - ... - 100**
Relacion de sucesion
Todo elemento tiene un elemento precede y lo sucede
Existencia de un ultimo elemento por ejemplo el 100.

Indefinidad Post test - puras e impuras - pre test
Definidas - manejados por contador

ACCION nombre ES
AMBIENTE:
sec:Secuencia de [tipo_dato];
c: [tipo_dato];
PROCESO:
.
.
.
FIN ACCION
sal es para crear una nueva
sec para utilizar la existente
CREAR (nombre_secuencia)

Desafio
"Torneo Interfacultades: El Desafío del Fixture Perfecto"

Escenario:

La universidad está organizando un torneo interfacultades de fútbol. Se han inscrito 8 equipos, y el comité deportivo debe organizar los fixtures (partidos), registrar las inscripciones y llevar el control de resultados. 

Uso del procedimiento:
Usaría un procedimiento para registrar los equipos en el sistema. Por ejemplo, el procedimiento registrarEquipos(parametros) no necesita devolver ningún valor, solo solicita los nombres de los equipos y los guardaria en una secuencia. Es ideal para inicializar los datos.

Uso de la función:
Usaría una función para generar un partido entre dos equipos aleatorios y devolverlo como una cadena de texto. La función generarPartidoAleatorio(parametro) puede retornar una cadena con los nombres de los equipos que jugarán.

Llamaría al procedimiento registrarEquipos al inicio para ingresar los equipos.
Usaría un bucle para generar el fixture usando la función generarPartidoAleatorio varias veces, asegurándome de no repetir partidos.
Podría almacenar los resultados en una estructura y luego calcular puntajes o clasificaciones.

Esto permite separar responsabilidades: el procedimiento se encarga de la carga de datos, y la función se encarga de generar lógicamente información útil (un partido).


# REGISTRO
Que es un registro es un tipo de dato estructurado
DNI: Nro: / caracteres: / muchos caracteres: alfanumericos  / registros:

Es lo mismo las dos definiciones:
campos: un campo es la entidad logica mas pequena que conforman al registro.
Un campo es la unidad minima de uinformacion de un registros puede ser datos estructurado : Ejemplo campo fecha.

dni: N(8);
dni: entero;
dia: 1..31;
carrera('IEM','IQ','ISI');

(Se usa = porque es un formato se usan variables)


PERSONA = Registro
  dominio
  modelo
  Fecha de nacimiento = Registro
    //Formato estructurado
  Fin Registro;
Fin Registro;
  reg:PERSONA;
  v_modelo: entero;
 

proceso
  leer(v_modelo);
  reg.modelo := v_modelo;
  leer(reg.dominio);
  escribir

//COMENTARIO: rango 1..31 por ejemplo.


UNIDAD 2:  

MEZCLAS:
Procesos Multiples con Archivos.
PROCESO ESTADISTICO




























