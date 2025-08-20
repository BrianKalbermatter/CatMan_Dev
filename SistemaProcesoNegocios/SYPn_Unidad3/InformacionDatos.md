# Temas:
- **SISTEMA DE INFORMACIÓN**: Concepto. Dato e información. Atributos de la información. 
- **FUNCIONES BASICAS DEL SI**: Entrada de datos. Almacenamiento de datos. Cálculo. Presentación. Comunicación. 
- **TIPOS DE SISTEMAS DE INFORMACIÓN**: Sistemas de procesamiento de transacciones. Sistemas de información administrativa. Sistemas para el soporte de decisiones. Sistemas para automatización de la oficina. Sistemas basados en el conocimiento. Sistemas de información para ejecutivos. 
- **SISTEMAS INTEGRADOS DE INFORMACION**

# Sistema de Informacion:
- Entidad abstacta denominada **Sistema de Informacion**.
- Medio de Sistema por lo cual los datos fluyen de una persona o departamento hacia otros y pueden ser cualquier cosa, desde la comunicacion interna entre los diferentes componentes de la organizacion y lineas telefonicas hasta sistemas de computo que generan reportes periodicos para varios usuarios. 
- La informacion es considerada como **la fuente de la organizacion de los sistemas abiertos**. 
- **Sistema de informacion esta incluido en otro sistema mayor, recibe, almacena, procesa y distribuye informacion.**
- Definido por una coleccion de personas, procedimientos y equipos disenados para recolectar, almacenar, procesar y distrbuir todos los datos relativos a la informacion de la Empresa.

## DATOS:
    Numeros, letras, simbolos, imagenes y sonidos, que describen objetos, condiciones o situaciones. Termino que lleva un mensaje que en si mismo no lleva ninguna informacion. Son intereses para distintos objetivos, entre los cuales se encuentra la toma de decisiones.

## INFORMACION:
    - Reduce la incertidumbre para orientar una decision.
    - Conjunto de datos = informacion.
    - Es cualquier conocimiento o mensaje util para la decision y la accion.
    - El signficado derivado de los datos.

**CENTRO DE ACTIVIDAD DEL SISTEMA DE INFORMACION**:
- Diferencias claves:
La diferencia fundamental es el "SIGNIFICADO". El dato por si sonlo no significa nada; la informacion es el dato interpretado y comprendido, que aporta valor y conocimiento al receptor.

Los datos se transforman en informacion cuando se les da un significado y se presentan de manera que sean utiles y comprensibles para quien los recibe. La informacion es valiosa porque ayuda a tomar decisiones y aumentar el conocimiento.

## Atributos de la Informacion:
Para que sea util, respaldar el proceso de toma de decisiones de una organizacion, **la informacion debe poseer algunso atributos indispensables tanto en los elementos que la forman como en el conjunto de la misma**.

- **RELEVANCIA**: Necesaria para una persona u organizacion en una situacion particular de toma de decisiones o de resolucion de problema.

- **COMPLETITUD**: Cuando un determinado conjunto de informacion indica al usuario todo lo que necesita saber en relacion con una situacion en particular.

- **OPORTUNIDAD**: Si la informacion esta disponible cuando se necesita o esta desactualizada cuando se la recibe o cuando se desea usarla y sin retraso.

---

## Atributos:
- **Completitud** ↔ Extensión
Completitud significa que no falten datos importantes.
En tu práctico lo llaman Extensión.
---
- **Oportunidad** ↔ Frecuencia + Temporalidad
Oportunidad es que la información llegue en el momento justo.
Esto se desdobla en:
Frecuencia → cada cuánto se entrega.
Temporalidad → si está actualizada o atrasada.
---
- **Relevancia** ↔ Forma + Origen + Pertinencia
Relevancia significa que la información sea útil para quien la recibe.
Esto se refleja en:
Forma → cómo se presenta (clara o confusa).
Origen → a quién se entrega (persona correcta o equivocada).
---
- **Exactitud**:
Este suele estar igual en todas las listas: que los datos sean correctos, sin errores.
---


## El concepto principal:
- **Los sistemas de informacion** mas exitosos (que generan mas beneficios para la empresa) nacen de las necesidades reales de los usuarios, no de la tecnologia por si misma.
1. Origen del exito: Se originan en los usuarios.

2. Necesidad reales: Los usuarios perciben problemas y necesidades especificas en la organizacion:
- Resolver problemas particulares para un sistema para automatizar facturaciones.
- Manejar funciones rutinarias: como procesar nominas o inventarios.
-Monitorear informacion: Para detectar problemas antes de que se agraven.

3. Contraste importante: **El sistema falla porque se enfocan en probar el valor de una tecnologia sostificada en lugar de resolver necesidades reales de la organizacion.**

El proposito fundamental de un sistema de informacion debe ser mejorar la organizacion, no demostrar que tan avanzada es la tecnologia. Los usuarios son quienes mejor conocen los problemas y necesidades reales de la empresa, por eso sus contribuciones son clave para el exito del sistema.

# FUNCIONES DEL SISTEMA DE INFORMACION:

En el proceso por el cual un dato se procesa y se convierte en informacion para la toma de decisiones, reduciendo la incertidumbre con estas funciones:
1. Entrada de datos. **Captura y validacion de origen.**
2. Almacenamiento de datos. **Persistencia estructurada.**
3. Calculo-Proceso. **Reglas de negocios, validaciones, ordenamientos, busquedas, actualizaciones.**
4. Presentacion. **Tableros, reportes, alertas, impresiones: visuales o sonoras.** 
5. Comunicacion. **Intercambio entre areas/sistemas(APIs, colas, redes), y colaboracion humana.**

## Pensamiento que debo tener:
- Se esta cargando algo nuevo? -> ENTRADA.
- Se guarda o consulta algo existente? -> ALMACENAMIENTO.
- Se hace un calculo, filtro u orden? -> PROCESO.
- Se muestra un resultado? -> PRESENTACION.
- Se manda la informacion a otro lugar/persona? -> TRANSMISION.
-----
-----

## Dos modalidades de procesamiento:
**Por lotes**: Se van juntando las operaciones durante un periodo. Por ejemplo todo el dia, se procesan todas juntas.
- Ejemplo: El banco procesa todas las transferencias del dia por la noche.
**Interactivo (enm linea)**: los datos se procesan al mismo tiempo que se ingresan, y el sistema puede responder en el momento.
- Ejemplo: Cuando compras online, el sistema valida en el instante si tu tarjeta es valida.

. Ventajas del sistema interactivo:
Una ventaja importante de la entrada de datos directa por personal operativo es la motivacion que proporciona para conseguir una alta precision.

- **Guia al operador**: El sistema puede mostrarle que informacion falta y hacer comprobaciones inmediatas de errores.

- **Correccion rapida**: Si se detecta un error, se puede corregir al momento, sin esperar al procedimiento por lotes.
> ENTENDER BIEN EL PROCEDIMIENTO POR LOTE.
- **Mayor precision**: Quien ingresa los datos es normalmente el responsable de la tarea, y como un error le afecta directamente, tiene mas motivacion para hacerlo bien.

Es mejor el sistema interactivo e integrado, porque se capturan datos una sola vez, evitando duplicar trabajo. Los errores se detectan al instante, no dias despues. El propio operador corrige los errores. Mejora la precision, el ingresante de datos es el responsable de la operacion por lo tanto tiene mas motivacion para hacerlo bien. La informacion esta disponible inmediatamente para toda la organizacion.

En el sistema por lotes los datos se procesan mucho despues, los errores se descubren tarde y es mas costoso corregirlos.

Ejemplo:
**Imagina que en una empresa de seguros, el agente de atencion al cliente carga directamente los datos de una reclamacion en el sistema interactivo. Si escribe mal el numero de poliza, el sistema se lo indica al instante para que lo corrija.**
**En cambio, si lo anotara en papel y otro lo carga mas tarde se lo llama procesamiento por lotes, podria que no se detecte el error hasta mucho despues, causando retrasos y complicaciones.**

# ALMACENAMIENTOS DE DATOS:

El sistema debe mantener grandes ficheros de datos para suministrar la informacion para el tratamiento de transacciones y para la toma de decisiones. Por ejemplo, en un hospital, un periodo de atenciones de cinco dias a un paciente puede facilmente generar 25.000 caracteres de datos, correspondientes a materias tales como la historia medica del paciente, los informes de laboratorio, los tratamientos medicos y las facturaciones. 300 camas ocupadas, da lugar a mas de 500 millones de caracteres en datos almacenados por año.

## Papel de la base de datos de la organizacion:

**La base de datos de un MIS** es el lugar donde se guarda toda la informacion de la empresa. En el MIS estan todos los datos que muestran lo que esta pasando en la organizacion.

- Evalua las condiciones actuales.
- Analizar lo que paso en el pasado.
- Planificar lo que se va a hacer en el futuro.
- Controlar que los planes se cumplan.

**Mientras mas depende la empresa del MIS, mas importante es que la base de datos sea confiable. Si los datos estan mal, las desiciones se toman mal.**

## Tipos de datos que guarda:

> Datos de estado: Muestran una situacion puntual. Ejemplo: stock de inventario o salario actual de un empleado.

> Datos de transacciones: Registran sucesos pasados. Ejemplo: una venta, la admision de un paciente.

> Datos operacionales resumidos: Datos ya agrupados para analizar. Ejemplo: ventas por mes durante el año pasado.

> Datos de ingenieria: Planos, procesos tecnicos.

> Datos textuales: correos, informes, documentos.

> Imagenes: firmas, graficos, dibujos.

## Actualizacion de la base de datos:

Cada vez que ocurre una transaccion (por ejemplo, una venta), el sistema localiza la informacion en la base de datos, actualiza los datos para reflejar los cambios. Por ejemplo: si un cliente hace un pedido. Se registra la venta. Se descuenta el inventario. Se actualiza el saldo del cliente. Quizas se modifiquen los planes de fabricacion.
**Todas las operaciones dejan (huella) en la base de datos.**

## La organizacion de la base de datos:
No son un monton de datos desordenados, sino que esta organizada para poder acceder a la informacion facilmente.
Esta compuesta por ficheros o archivos.
    Ejemplo: Ficheros EMPLEADO, Fichero CLIENTE, Fichero INVENTARIO.
Cada fichero contiene registros, y cada registro es informacion de una sola entidad.
    Ejemplo: El fichero Empleado tiene un registro por cada trabajador con su nombre, direccion, historial, etc.
Cada registro tiene indentificador unico(un ID o codigo) que permite encontrarlo rapidamente.

## Imperfecciones de la Base de Datos:
La base de datos nunca es una copia perfecta de la realidad porque pueden suceder problemas como los errores de entrada de datos. Ejemplo: Registra 15 unidades vendidas cuando en realidad fueron 25. Retrasos en la actualizacion, ejemplo: Si las ventas se cargan recien al final del dia, durante el dia la base de datos no refleja la realidad. Tambien suceden incoherencias de datos duplicados, ejemplo: Si los datos se actualizan en diferentes sistemas a destiempo, puede parecer que se vendio mas de lo que se fabrico.
Estos problemas generan una base de datos menos confiables.

## CALCULO O COMPUTACION:
El calculo o computacion es cualquier operacion que se realiza sobre los datos de la base de datos, incluyendo no solo calculos matematicos sino tambien manipulacion como ordenar, comparar, buscar, insertar, eliminar o tomar decisiones automaticas segun el resultado de esas comparaciones.

## PRESENTACION DE LA INFORMACION (Salida):
La presentacion de la informacion es la parte del MIS que conecta el sistema con el usuario.
Su objetivo es mostrar la informacion de una forma clara y util, para que el usuario pueda tomar decisiones o actuar. En sistemas interactivos donde el usuario y la maquina deben comunicarse rapidamente.

No toda la informacion se muestra al usuario:
- Parte de los datos queda dentro del sistema, solo actualizando la base de datos. Otros datos se usan automaticamente para controlar procesos.
Ejemplo: En una fabrica, el sistema puede ajustar automaticamente una maquina si detecta que esta fuera de rango.

**Informacion presentada visualmente:**
- Se usan lineas, simbolos, colores, tamanos y otros elementos graficos. Tambien puede presentarse por otros sentidos:
- Ejemplo visual: graficos en una pantalla.
- Ejemplo auditivo: una alarma que suena cuando hay un error grave.
- Ejemplo tactil: la vibracion de un control cuando algo falla.
- Impresa (en papel) o en pantalla temporales.
- En graficos (barran, tortas, diagramas) o en texto/tablas.
- Monocromo (un solo color) o multicolor.
- Con animacion (imagen y sonido).

Ejemplo:
Un sistema de ventas puede mostrarle al gerente un tablero digital con las venta del dia (en graficos de barras y tablas), y enviarle un reporte impreso al final de la semana. Si una sucursal esta por quedarse sin stock, el sistema podria lanzar una alerta sonora y visual.

## TRANSMISION DE DATOS(Comunicacion):

Los sistemas de informacion actuan como el sistema nervioso de la organizacion, ya que conectan diferentes parte de la empresa mediante comunicaciones.

**Necesidades de comunicacion:**
1. Entrada de informacion multiples lugares:
- Los datos capturan en muchas terminales dentro y fuera de la empresa: clientes, proveedores, agencias, etc.
- Luego esos datos se comunican a otros puntos donde se procesan o utilizan.
Ejemplo: Un pedido hecho por un cliente en una web llega al sistema central de la empresa y tambien al area de logistica para preparar el envio.
2. Compartir recursos costosos o especializados: tales como una impresora laser, multiples usuarios compartido por sus puestos de trabajo con los recursos compartidos, idealmente de un modo suficientemente accesible como para producir a cada usuario la ilusion de que dispone de su propio dispositivo.
Comunicacion interpersonal directa es necesaria para coordinar y planificar.

### Tipos de Sistema de Informacion:
Dependiendo de las necesidades de la empresa y el nivel de la organizacion. Puedo diferenciar seis tipos:

## Sistemas de Procesamiento de Transacciones (TPS)
## Sistemas de Informacion Administrativa (MIS)
## Sistemas para el Soporte de Decisiones (DSS)
## Sistemas para la Automatizacion de la Oficina (OA)
## Sistemas Basados en el Conocimiento (IA-SE)
## Sistemas para Ejecutivos (EIS)

## Los Sistemas de Planificacion de Recursos Empresariales (ERP)
## Los Sistemas de Gestion de Relaciones con el Cliente (CRM)

1. # <span style="color: red;">***Sistemas de Procesamiento de Transacciones (TPS)***</span>
(NIVEL OPERATIVO)
(ESTRUCTURADAS): OPERATIVAS, REPETITIVAS.

## Se refiere aquellos sistemas que se encargan de retirar, procesar y almacenar las operaciones diarias y rutinarias de una organizacion.
No estan pensados para analisis avanzado ni toma de decisiones estrategicas.

**Es un software que automatiza las tareas repetitivas y rutinarias de una empresa.** Concepto: Procesa grandes volumenes de datos de forma automatica, sigue procedimientos estandar sin variaciones. Requiere minima intervencion humana.

- En una transaccion:
- Una transaccion es cualquier suceso o actividad que afecta a toda la organizacion.

> Facturacion, pago de empleados, depositos bancarios. Entrega de mercancia.

> Cliente introduce datos → Sistema verifica → Procesa → Entrega resultado

- Se usa en una empresa cuando tiene muchas transacciones similares, procedimientos bien definidos, pocos excepciones a las reglas normales.

Es el conjunto de procedimientos para el manejo, incluye actividades como: Calculo, Clasificacion, Ordenamiento, Almacenamiento y recuperacion, Generacion de resumenes. Todas estas actividades forman parte del nivel operacional de cualquier organizacion. **Caracteristicas**: Gran volumenes de transacciones. Gran Similitud entre transacciones. 

## Procedimiento adecuado cuando los clientes efectuan retiros en las maquinas de caja automatica:
- Actividad del cliente Actividad del Sistema.
- Proporcionar el Numero de Cuenta. Verificar la validez del numero de cuenta.
- Proporcionar la contrasena. Verificar la validez del numero de cuenta.
- Proporcionar el monto del retiro.
- Verificar que el monto se encuentre dentro de los limites establecidos por el banco.
- Verificar que el monto se encuentre dentro del saldo de la cuenta.
- Registrar la transaccion en los archivos.
- Entregar el dinero.
- Expandir el comprobante correspondiente a la transaccion.

---

2. # <span style="color: yellow;">***Sistemas de Informacion Administrativa (MIS)***</span>
(GERENCIA MEDIA)
(ESTRUCTURADAS Y SEMI-ESTRUCTURADAS): TACTICAS/ADMINISTRATIVAS. 

Un sistema de Informacion Administrativa (MIS) es un sistema computarizado que organiza y presenta informacion util para ayudar a gerentes y administrativos a tomar decisiones efectivas dentro de una empresa.

El MIS es utilizado por personas dentro de la empresa: A veces toda la organizacion, y otras veces solo un area, sucursal o departamento. La informacion generada puede ser utilizada tanto por gerentes como por personal no directivo para resolver problemas y mejorar la gestion.
La informacion que ofrece un MIS incluye:
- Lo que paso en el pasado (ventas, gastos, ingresos historicos).
- Lo que esta ocurriendo ahora (datos actuales o tiempo real).
- LO que podria pasar en el futuro (simulaciones y proyecciones).
Esa informacion se presenta a traves de reportes periodicos, reportes especiales y salidas de simulaciones o analisis matematicos.
En resumen, un MIS permite tomar decisiones mas inteligentes y resolver problemas operativos o estrategicos dentro de una empresa.

> MIS (Sistema de Información Administrativa):
La gerencia media (jefes de área, gerentes de sucursales) no quiere ver cada ticket de compra, sino reportes consolidados que les ayuden a administrar y tomar decisiones tácticas.

El MIS podría generar:

Reporte semanal de ventas por sucursal:

Sucursal A: $3.200.000

Sucursal B: $2.450.000

Sucursal C: $1.950.000

Análisis de productos más vendidos:

1° Leche entera

2° Pan lactal

3° Gaseosa cola 2L

Reporte de rotura de stock:

El sistema avisa que en la sucursal C se están acabando los fideos y la harina.

Proyecciones de demanda para la próxima semana:

Basado en patrones de compras históricas + estacionalidad.

Ejemplo de uso:
El gerente de la sucursal B ve en el MIS que las ventas bajaron un 12 % respecto al mes pasado, y que el producto “Aceite de girasol” está en falta desde hace 5 días.
Decide coordinar con logística para acelerar reposición de stock y planear una promoción de fin de semana para recuperar ventas.

Clave de un MIS en este nivel:

Usuarios: gerencia media (no la alta dirección todavía).

Decisiones: tácticas y administrativas (qué vender más, cómo organizar turnos, cómo reponer stock).

Información: estructurada y semi-estructurada (reportes periódicos y algunos análisis).

---

3. # <span style= "color: green;">***Sistemas para el soporte de Decisiones (DSS)***</span>
(ALTA GERENCIA)
(SEMI-ESTRUCTURADAS Y NO ESTRUCTURADAS): ANALISIS, ESCENARIOS.

El DSS es un sistema de informacion gerencial que combina modelos de analisis y datos para resolver problemas semi-estructurados y no estructurados, involucrado al usuario a traves de la interfaz amigable. Su porposito principal es dar apoyo y mejorar el proceso de toma de decisiones a lo largo de las etapas del mismo: inteligencia, diseno, seleccion e implementacion. Principalmente se utilizan para decisiones estrategicas y tacticas en la gestion a nivel superior, donde las situaciones consideradas como problematicas se presentan con baja frecuencia.
Un factor clave en el uso de estos sistemas es determinar la informacion necesaria.

### ¿Qué es?
Sistema que ayuda a tomar decisiones complejas

### ¿Para qué?
Transformar datos en información estratégica

### ¿Quién lo usa?
Directivos y gerentes

### ¿Cómo funciona?
4 etapas: Inteligencia → Diseño → Selección → Implementación

### ¿Por qué es importante?
Porque permite tomar decisiones más inteligentes y fundamentadas.

---

4. # <span style="color: orange;">***Sistemas de Informacion para Ejecutivos (EIS)***</span>
(ALTA GERENCIA)
(NO ESTRUCTURADA): ESTRATEGICAS, ALTA DIRECCION.

## Concepto:
**Un sistema de Informacion para Ejecutivos o Sistema de Informacion Ejecutiva es una herramienta software, basada en un DSS, que provee a los gerentes de un acceso sencillo a informacion interna y externa de su compania, y que es relevante para sus factores clave de exito. Permite a los ejecutuvos tener una vision rapida, clara y profunda del estado del negocio, ayudandolos a tomar decisiones estrategicas basadas en datos actualizados, sin depender de terceros, con herramientas visuales, acceso a multiples fuentes de informacion y modelos como el cuadro de Mando Integral.**
- Se conecta a Sistemas Transaccionales internos y a fuentes externas (bases de datos, noticias, informes del sector).
- Filtra, resume y organiza la informacion critica.
- Usa Hardware especializado, pantallas tactiles, impresoras avanzadas, etc.

Ejemplo:
El director de la empresa abre el EIS y ve que en la región sur las ventas de un producto están cayendo, mientras en la competencia suben. El sistema cruza datos con fuentes externas (estadísticas de mercado, informes de consumidores) y muestra que un competidor lanzó una promoción fuerte.
Con esa información, el director decide lanzar una campaña de marketing urgente en esa zona.
---


5. # <span style="color: blue;">***Sistemas para Automatizacion de la Oficina (OA)***</span>
(ESTE SISTEMAS ESTA EN TODOS LOS NIVELES)
(NO DECIDE): FACILITA CUALQUIER TIPO DE COMUNICACION Y COORDINACION.

## Concepto:
**Conjunto de sistemas electronicos, formales e informales, cuya funcion principal es facilitar la comunicacion de informacion entre personas dentro y fuera de la compania.**

## Caracteristicas Principales:
1. Facilita la comunicacion (oral y escrita)
2. Incluye sistemas formales e informales.
3. Permite el trabajo desde cualquier lugar (oficina virtual).

- Los tipos de sistemas pueden ser:
**Formales**: Planificados y documentados, implementados a nivel organizacional (como un MIS).

**Informales**: No planificados, usados segun necesidad individual(como un DSS).

**Oficina Virtual**: El trabajo de ofinina puede hacerse desde cualquier lugar conectado electronicamente.

### Conceptos Claves:
- Teleprocesos:
- Teletrabajos:
- Trabajo a distancias:

## CONSEJOS PARA EL EXAMEN
**AL ESCRIBIR LA RESPUESTA:**
Siempre menciona la comunicación como función principal
Incluye ejemplos de aplicaciones OA
Especifica la existencia de sistemas formales e informales
Menciona la oficina virtual y el trabajo remoto
**PALABRAS CLAVE PARA USAR:**
Comunicación
Oficina virtual
Sistemas formales/informales
Teletrabajo
Aplicaciones OA


## Algunas aplicaciones típicas de la OA son:

1. Procesamiento de textos: es el uso de una computadora para realizar automáticamente muchas de las tareas necesarias para preparar documentos mecanografiados o impresos.

2. Correo Electrónico (e-mail): es el uso de una red de computadoras que permite a los usuarios enviar, almacenar y recibir mensajes empleando terminales y dispositivos de almacenamiento.

3. Correo de voz: es similar al correo electrónico, sólo que se envían los mensajes hablando al teléfono en lugar de teclearlos, y se usa el teléfono para recuperar mensajes recibidos.

4. Agenda electrónica: implica el uso de una computadora conectada a una red para almacenar y recuperar la agenda de citas de un gerente.

5. Audio conferencias: implica el uso de equipo de comunicación de voz para establecer un enlace de audio entre personas que están dispersas geográficamente, para que puedan celebrar una reunión.

6. Videoconferencias: implican el uso de equipo de televisión para vincular participantes que están dispersos geográficamente. El equipo proporciona tanto sonido como imagen.

7. Conferencias por computadora: implican el uso de una computadora conectada a una red para que participantes que tienen una característica en común intercambien información respecto a un tema específico. Las conferencias por computadora son una forma más disciplinada de correo electrónico.

8. Transmisión de facsímil (fax): implica el uso de equipo especial que puede leer una imagen de documento en un extremo de un canal de comunicación y producir una copia en el otro extremo (generalmente es una línea telefónica).

9. Videotex: Es el uso de una computadora para exhibir material narrativo y gráfico almacenado en una pantalla.

10. Manejo de imágenes: es el uso de reconocimiento óptico de caracteres (OCR) para convertir datos que están en papel, en un formato digital que se guarda en un dispositivo de almacenamiento secundario

11. Autoedición. O DTP desktop publishing es el uso de una computadora para preparar salidas cuya calidad es muy cercana a la que produciría un taller tipográfico.


## PREGUNTAS FRECUENTES DE EXAMEN
1. ¿Qué es la Automatización de la Oficina (OA)?
**RESPUESTA COMPLETA:**
Es el conjunto de sistemas electrónicos, formales e informales, cuya función principal es facilitar la comunicación de información entre personas dentro y fuera de la compañía, permitiendo incluso el trabajo remoto (oficina virtual).

2. ¿Cuáles son las dos clases de sistemas OA?
**RESPUESTA:**
Formales: Planificados y documentados, implementados a nivel organizacional
Informales: No planificados, usados según necesidad individual

3. ¿Qué es una oficina virtual?
**RESPUESTA:**
Es la capacidad de realizar trabajo de oficina desde cualquier lugar, siempre que exista conexión electrónica con la empresa.

4. Menciona 5 aplicaciones típicas de OA.
**RESPUESTA:**
Procesamiento de textos, correo electrónico, agenda electrónica, videoconferencias, manejo de imágenes.

5. ¿Cuál es la palabra clave que caracteriza la OA?
**RESPUESTA:**
Comunicación

## REPASO FINAL - 5 MINUTOS
## ¿Qué es?
Sistemas electrónicos para facilitar la comunicación y el trabajo de oficina
## ¿Para qué?
Mejorar la comunicación y permitir el trabajo remoto
## ¿Quién lo usa?
Todo el personal de oficina, dentro y fuera de la empresa
## ¿Cómo funciona?
A través de aplicaciones como correo electrónico, videoconferencias, agenda electrónica, etc.
## ¿Por qué es importante?
Porque permite trabajar y comunicarse desde cualquier lugar, aumentando la eficiencia y flexibilidad

---

6. # <span style="color: cyan;">***Sistemas Basados en el Conocimiento (IA - SE)***</span>
(ESTE SISTEMAS ESTA EN TODOS LOS NIVELES)
(PUEDE AUTOMATIZAR ESTRUCTURAS Y ASISTIR SEMI/NO ESTRUCTURADAS EN DOMINIOS ESPECIFICOS)


## Concepto:
**Un sistema experto es un tipo de inteligencia artificial que simula el razonamiento de un experto humano mediante una base de conocimientos, un motor de inferencia y una interfaz de usuario, con el objetivo de analizar informacion, resolver problemas concretos, tomar decisiones autonomas y explicar su razonamiento, diferenciandose de los sistemas de apoyo a decisiones (DSS) porque no solo asesora, sino que selecciona la mejor solucion posible, y se aplica en areas como medicinas, finanzas, industria y atencion al cliente, junto con otras ramas de la IA como redes neuronales, procesamiento de lenguaje natural, sistemas perceptivos y aprendizaje automatico.**

## Puntos Claves:
- Simula el pensamiento de un experto humano.
- Usa base de conocimientos, motor de inferencia e interfaz de usuario.
- Resuelve problemas especificos y toma decisiones por si mismo.
- Explica como llego a sus conclusiones.
- Se diferencia del DSS porque no solo ayuda: elige la mejor opcion.
- Se aplica en salud, banca, industria y mas.
- Forma parte de la IA junto a otras areas como: 
    - Redes neuronales.
    - Procesamiento del lenguaje natural.
    - Sistemas perceptivos.
    - Aprendizaje automatico.

---

# Estos dos tipos no entran:
7. Los sistemas de planificacion de recursos empresariales (ERP).
## Concepto:
**Un Enterprise Resource Planning es un sistema de software que integra y automatiza todos los procesos de una empresa en una sola plataforma, con una base de datos comun, ayudando a ahorrar tiempo, reducir errores, aumentar la productividad y facilitar la toma de decisiones, tanto en grandes empresas como en pymes.**

El objetivo principal es optimizar la gestion de los recursos de la empresa. Ahorrando tiempo y mejorando la eficiencia operativa mediante la integracion de datos y procesos.

- Requiere de una infraestructura tecnologica comun.
- Es clave un proceso de implementacion y personalizacion, que lleva tiempo y recursos.
- Se compone de modulos funcionales (finanzas, logisticas, ventas, RRHH, etc.) que se pueden adaptar a las necesidades de cada negocio.
- Garantiza que la informacion se cargue una sola vez y este disponible en tiempo real para todas las areas.
- Permite una automatizacion completa del flujo de trabajo y la trazabilidad de operaciones.


---

8. Los sistemas de gestion de relaciones con el cliente (CRM).
## Concepto:
**Estrategico, organizativo y ternlogico: Es el conjunto de herramientas TIC principalmente software, que va a permitir no solo reunir toda la informacion necesaria sobre el cliente y mejorar las decisiones de gestion de estos, sino tambien darle un mayor acceso a la compania con la que se pretende que se identifique**.
-Organizan ciertos procesos empresariales en torno a un eje distinto al habitual, como el producto por ejemplo. Tiene varias ventajas importante de utilizacion e incorporacion de soluciones:
- Posibilidad de identificar oportunidades de negocio.
- Incremento de calidad y cantidad de informacion.
- Posibilidad de aumentar las ventas y la fidelizacion del cliente.
- Promueven procesos de cambio para la mejora.

---

# <span style="color: purple;">DATOS IMPORTANTES:</span>
## **Entrada de datos (Recoleccion de datos)**:
MIS se regiere al Management Information System(Sistema de Informacion Gerencial o Sistema de Informacion de Gestion).
- Proporciona informacion a los gerentes para la toma de decisiones.

- Procesa datos operativos para generar reportes gerenciales.

- Sirve como puente entre los sistemas operativos y la direccion de la empresa.

La **entrada de datos** actua como un "sensor" del MIS porque:

1. Captura eventos del mundo real, recepcion de pedidos de clientes, terminacion de operaciones de fabricacion, llegada de cheques de clientes. 

2. Convierte transacciones en datos procesables: El sistema recibe muchos datos que describen sucesos reales de la empresa.

3. Mantiene contacto con la realidad operativa:

> **Eventos del mundo real** → **Entrada de datos** → **Procesamiento** → **Información gerencial** → **Toma de decisiones**.

- El MIS transforma las tansacciones diarias, datos operativos en informacion estrategica que los gerentes pueden usar para tomar decisiones informadas sobre el negocio.

- **TECNICAS DE ENTRADA DE DATOS**: Para introducir datos se usa una diversidad de medios. El metodo tradicional es mediante la operacion de un teclado. En la figura se representa un modelo de pantalla en donde los rectangulos muestran los datos a introducir por el operador. Cada uno de estos datos se denomina **campo**.

Exploracion optica de ingreso de datos, lectura automatica de los caracteres impresos.

- **Coste de entrada de datos**: 
La funcion entrada de datos, el costo de recoger los datos es tan grande que el valor de la informacion.

- **Control de errores**. (Validacion):
La funcion de entrada de datos es critica, no solo por su coste, sino porque es la funete de errores del sistema mas incisiva. La calidad de las salidas de un MIS depende de la calidad de sus datos de entrada.

- **Entrada de datos integrada**:
Significa que los datos se capturan una sola vez en el lugar donde se generan. Por ejemplo: un cajero, un agente de seguros, un vendedor. Luego, se comparten con todos los sectores que lo necesiten. **Ejemplo: Si un cliente de su direccion al abrir una cuenta, esa informacion se usa para facturacion, soporte, marketing, etc, sin volver a pedirla.**


# Sistemas Integrado de Informacion:
## Conceptos:
**Integracion de Sistemas: Es el entrelazamiento de sistemas donde los datos de un sistema pueden pasarse rutinariamente a uno o varios sistemas mas. Los sistemas "interactuan" cuando comparten flujos de datos, y cuando se establecen "uniones" internas entre elementos de datos, se dice que estan "integrados".**

**Flujos de Datos: Los sistemas se relacionan por flujos de informacion cuando los datos de un sistema son necesarios para otro sistema que no puede generarlos, o cuando seria mas costoso, lento o menos exacto generarlos por separado.**

### Tipo de Integracion:

**Jerarquica**: 
Los sistemas de nivel de transacciones alimentan datos a los de nivel administrativo, o viceversa. Es la mas probable de ser identificada porque los administradores saben que la informacion debe resumirse de las lineas de jerarquia.

**Horizontal**: 
Dentro de una linea de mando, los datos se procesan entre sistemas de informacion de varios departamentos de produccion cuando los productos se muevan de un departamento a otro.

### Mecanismos de Integracion:
- Procedimientos estándar para transporte físico de datos
- Comunicación directa entre administradores
- Respuestas automatizadas a condiciones internas
- Cálculos automáticos
- Diseños de bases de datos formales
- Transferencias automáticas de datos
- Extracción simultánea de información de varios sistemas

### Beneficios:
- Mejores flujos de información en la empresa
- Informes más puntuales
- Información más relevante disponible cuando se necesita
- Obliga a compartir información entre departamentos
- Evita la "negociación" de información como intercambio de favores

**Limitaciones**: 


Ningun SIG(SIG:**Es un sistema donde los diferentes sistemas de informacion de una empresa estan integrados entre si, permitiendo que los datos fluyan entre ellos de manera rutinaria. Es fundamental para que la informacion fluya eficientemente en toda la organizacion, permitiendo mejores flujos de informacion, informe mas puntuales y obligando a compartir informacion entre departamento.**) tiene todos sus sistemas completamente integrados porque seria inefectivo en costo. La integracion aumentar el costo al hacer el diseno mas dificil, requerir mas equipos y programas mas complejos.

**Identificacion de Interacciones**: 
Se logra mejor cuando los sistemas se planean y disenan juntos, no por separado. La investigacion de sistemas no limitada a uno solo es la forma mas efectiva de identificar interacciones potencialmente utiles.

# Tipos de decisiones: 
Estructuradas: Insertidumbre.
Semi-Estructuradas: Riesgos.
No Estructuradas: No se sabe lo que va a pasar.

---

# Autoevaluacion:

1) **Sistema de Información (concepto, dato vs información, atributos)**
- ¿Cuál es la diferencia entre dato e información? Da un ejemplo concreto de cómo un MIS transforma datos en información útil para decidir.
```bash
Respusta:
La principal diferencia entre dato e informacion es el SIGNIFICADO. Los DATOS son cualquier cosa, imagenes, sonidos, letra, simbolos. La INFORMACION es la recoleccion de datos que hay en un grupo de persona como en este caso en una organizacion.

```
- Nombra y explica dos atributos clave de la información (por ejemplo, relevancia y oportunidad) y por qué impactan en la toma de decisiones.
```bash
Respusta:


```
2) **Funciones básicas del SI (entrada, almacenamiento, cálculo, presentación, comunicación)**
- Explica la diferencia entre procesamiento por lotes y procesamiento en línea (interactivo) con un ejemplo de negocio para cada uno.
```bash
Respusta:


```
- ¿Por qué la entrada de datos suele ser la mayor fuente de errores y qué mecanismos de validación/guía al operador los reducen?
```bash
Respusta:


```
3) **Tipos de Sistemas de Información (TPS, MIS, DSS, OA, SE/IA, EIS)**
- Compara TPS, MIS y DSS en: objetivo principal y tipo de decisión que soportan (estructurada, semi/no estructurada).
```bash
Respusta:


```
- Caso: una sucursal se queda sin stock. Indica qué sistemas intervienen (TPS/MIS/DSS/OA/EIS/SE), qué hace cada uno y en qué orden probable.
```bash
Respusta:


```
4) **Sistemas Integrados de Información (SIG)**
- Define integración jerárquica vs horizontal y da un ejemplo sencillo de cada una.
```bash
Respusta:


```
- Menciona dos beneficios y dos limitaciones de integrar sistemas, y explica por qué “ningún SIG integra todo” desde el punto de vista de costo/beneficio.
```bash
Respusta:


```

---

# CLASIFICACION DE SISTEMAS DE INFORMACION:
1. TPS - Sistema de Procesamiento de Transacciones: **Estructuradas**.
- Nivel Operativo.
- Registra operaciones rutinarias automaticas.
- Empleados de nivel operativo.
Ejemplos:

> Cajero automatico que procesa extracciones.

> Caja de supermercado que registra ventas.

> Sensor que activa un riesgo automatico.
---
2. MIS - Sistema de Informacion Gerencial: **Semi-Estructurada y Estructuradas**.
- Nivel Tactico / Gerencial Medio.
- Resume informacion de los TPS en reportes periodicos.
- Jefes, gerentes intermedios.
Ejemplos:

> Informe mensual de ventas por sucursal.

> Reporte de stock.

> Graficos de produccion mensual.
---
3. DSS - Sistema para el Soporte de Desiciones: **Semi-Estructurada y No Estructurada**.
- Nivel Tactico / Alta Gerencia
- Analiza informacion y modelos para ayudar en decisiones no rutinarias.
- Gerentes o analistas.
Ejemplos:

> Simular distintos escenarios de demanda futura.

> Proyecciones de produccion si cambia el clima.

> Comparar costos entre varios proveedores.
---
4. OA - Sistema de Automatizacion de Oficina: **Facilita comunicacion y coordinacion administrativa**.
- Nivel Administrativo pero No decide(Se lo coloca asi en la piramide).
- Facilita el trabajo de oficina y la comunicacion.
- Empleados administrativos, staff.
Ejemplos:

> Correo electronico.

> Procesadores de texto, planillas Excel.

> Agenda electronica, gestion de documentos.
---
5. IA-SE - Analisis de Informacion - Inteligencia Artificial / Sistema Expertos: **Estructurada y Semi-Estructurada**.
- Nivel de Conocimiento / Analitico.
- Usa IA o reglas de conocimiento experto para resolver problemas complejos o especializados.
- Especialistas, ingenieros, medicos, tecnicos.
Ejemplos:

> Un sistema experto medico que diagnostica enferemedades.

> IA que recomienda planes de inversion.

> Motor experto que aconseja fertilizacion de cultivos segun suelo y clima.
---
6. EIS/ESS - Sistema de Soporte Ejecutivo: **No Estructurada**.
- Nivel Estrategico (Alta direccion).
- Brinda vision global con informacion resumida y tendencia.
- Directivos.
Ejemplos:

> Dashboard con indicadores economicos mundiales.

> Reporte comparativo de la empresa frente a la competencia.

> Tablero con indicadores de rentabilidad, mercado, clientes.
---

## **La pirámide típica de SI**.
Nivel operativo → TPS (transacciones diarias).
Nivel administrativo (u oficina) → OA (automatización de oficina).
Nivel táctico / gerencial medio → MIS (informes) y DSS (decisiones no rutinarias).
Nivel estratégico / alta dirección → ESS/EIS (visión global).

---

## **Tip mental para diferenciar:**
TPS → rutina operativa automática.

MIS → informes gerenciales periódicos.

DSS → apoyo a decisiones no rutinarias.

OA → trabajo de oficina, comunicación.

IA-SE → inteligencia artificial, sistemas expertos especializados.

ESS/EIS → nivel estratégico, visión global de la empresa.
