# Corte de control:
Siempre en corte de control
Llamo al anterior metodo
Escribo
Acumular los acumuladores
Resguardar
Y coloco en 0 los totales.





Se dispone de un archivo con datos de los alumnos de la U.T.N. con la siguiente información para cada alumno:

    Sexo | Carrera | NroLegajo | FechaIngreso | TotalMateriasAprobadas

Se desea un listado con el siguiente detalle por sexo, carrera y total general:
    a) Total de alumnos que ingresaron en el año 2009 con más de 20 materias aprobadas.
    b) Total de alumnos que ingresaron en el año 2009 con menos de 20 materias aprobadas.


Accion 211 es
    Ambiente 
        fecha = Registro
            dd: 1..31
            mm: 1..12
            aa: N(4)
        FinRegistro

        alumno = Registro
            Sexo: ("M" , "F")
            Carrera: ("ISI", "IQ", "IEM", "LAR")
            Nrolegajo: N(6)
            FechaIngreso: fecha
            TotalMateriasAprobadas: entero
        FinRegistro

        arch_alu: archivo de alumno ordenado por sexo y carrera
        reg_alu: alumno
        res_sexo: ("M" , "F")
        res_carrera: ("ISI", "IQ", "IEM", "LAR")
        tot_gral_mayor, tot_gral_menor , tot_carrera_menor, tot_carrera_mayor, t_sexo_mayor, tot_sexo_menor: entero

        Subaccion INICIALIZAR es
            Abrir E/ (arch_alu)
            Leer(arch_alu, reg_alu)
            res_sexo:= reg_alu.sexo
            res_carrera:= reg_alu.carrera
            tot_carrera_menor:=0
            tot_carrera_mayor:=0
            tot_sexo_mayor:=0
            tot_sexo_menor:=0
            tot_gral_mayor:=0
            tot_gral_menor:=0
        FinSub

        Subaccion corte_sexo es
            corte_carrera //llamo corte de nivel inferior
            Escribir("Los alumnos de sexo",res_sexo, " que ingresaron en el año 2009 con más de 20 materias aprobadas son:", tot_sexo_mayor)
            Escribir("Los alumnos de sexo",res_sexo, " que ingresaron en el año 2009 con menos de 20 materias aprobadas son:", tot_sexo_menor)
            tot_gral_mayor:= tot_gral + tot_sexo_mayor 
            tot_gral_menor:= tot_gral_menor + tot_sexo_menor
            tot_sexo_mayor:= 0
            tot_sexo_menor:=0
            res_sexo:= reg_alu.sexo
        FinSub

        Subaccion corte_carrera es
            Escribir("Los alumnos de ",res_carrera , " que ingresaron en el año 2009 con más de 20 materias aprobadas son:", tot_carrera_mayor)
            Escribir("Los alumnos de ",res_carrera, " que ingresaron en el año 2009 con menos de 20 materias aprobadas son:", tot_carrera_menor)
            tot_sexo_mayor:= tot_sexo_mayor + tot_carrera_mayor
            tot_sexo_menor:= tot_sexo_menor + tot_carrera_menor
            tot_carrera_mayor:=0
            tot_carrera_menor:=0
            res_carrera:= reg_alu.carrera
        FinSub 

        Subaccion tratar_corte es
            Si res_sexo <> reg_alu.sexo entonces
                corte_sexo
            Sino
                Si res_carrera <> reg_alu.carrera entonces
                    corte_carrera
                FinSi 
            FinSi
        FinSub

        Subaccion tratar_registro es
            Si reg_alu.FechaIngreso.aa = 2009 entonces
                Si reg_alu.carrera > 20
                    tot_carrera_mayor:= tot_carrera_mayor + 1
                Sino 
                    tot_carrera_menor:= tot_carrera_menor + 1
                FinSi
            FinSi
        FinSub 

        Subaccion total_general es
            Escribir("Los alumnos que ingresaron en el año 2009 con mas de 20 materias aprobadas son: ", tot_gral_mayor)
            Escribir("Los alumnos que ingresaron en el año 2009 con menos de 20 materias aprobadas son: ", tot_gral_menor)
        FinSub

    Proceso 
        INICIALIZAR

        Mientras NFDA (arch_alu) hacer
            tratar_corte
            tratar_registro
            Leer(arch_alu, reg_alu)
        FinMientras
        
        corte_sexo
        total_general
        Cerrar(arch_alu)

FinAccion





























































































# Ejercicio 2
Además de la información previamente mencionada, se dispone de un archivo que registra las
adopciones organizadas por departamento, localidad, barrio y adoptante. Este archivo también
proporciona datos adicionales como el tipo de animal (canino o felino), y la cantidad de
mascotas que ya tiene el adoptante.

Procedimiento:

corte de control localidad y barrio

Departamento | localidad | barrio | dni adoptante | id_mascota | Tipo (C,F) | cant anteriores

*SE DISPONE DE UN ARCHIVO DE REGISTROS*
cont_perros (acumuladores);
cont_gatos (acumuladores);
total_gatosadot;

## Se solicita:
1. Informar la cantidad de adopciones por localidad y barrio ; discriminando por perros y
   gatos.
2. Informar el porcentaje de gatos adoptados en la provincia.
3. Generar un nuevo archivo con el siguiente formato, considerando solo las adopciones
   por familias que ya tenían más de 3 mascotas.
   Departamento | Localidad | Cantidad de adopciones

bash
ACCION EJERCICIO2 ES
AMBIENTE
        TOT_GATOS, TOT_GATOS_BARRIO, TOT_PERROS_BARRIO, TOT_GATOS_LOCALIDAD, TOT_PERROS_LOCALIDAD, PORCENTAJE_GATOS, PORCENTAJE_PERROS: N(3);
        
        ADOPCIONES = Registro
            depa: AN(20);
            local: AN(20);
            barrio: AN(20);
            dni_adopt: N(8);
            id_mascota: entero;
            tipo: AN(2);
            cant_anteriores: N(10);
        fin registro
        
        ADOP_FAMILIA = Registro
            depa: AN(20);
            local: AN(20);
            cant_adopt: N(10);
        fin registro

        #// Archivo de adopciones
        Archivo: Archivo de ADOPCIONES ordenado por depa, local,barrio, dni_adopt, id_mascota, tipo, cant_anteriores; 
        Archivo_sal: Archivo de ADOP_FAMILIA ordenado por depa, local, cant_adopt;
        
        REGadopt: ADOPCIONES
        REG_ADOP_FAMILIA: ADOP_FAMILIA;
        R_BARRIO, R_LOCALIDAD: AN(20);
        
        SUBACCION CORTE_BARRIO ES
            // Escribir
            ESC("En el barrio de ", REGadopt.barrio);
            ESC("El total de gatos es de: "TOT_GATOS_BARRIO");
            ESC("El total de perros es de: "TOT_PERROS_BARRIO");
            // acumular
            TOT_GATOS:= TOT_GATOS + TOT_GATOS_BARRIO;
            TOT_PERROS := TOT_PERROS + TOT_PERROS_BARRIO;
            // resguardar
            R_ADOPTADOS := REGadopt.cant_anteriores;
            // poner en 0
            TOT_GATOS_BARRIO:= 0;
            TOT_PERROS_BARRIO:= 0;
        FIN_SUBACCION

        SUBACCION CORTE_LOCALIDAD ES:
            CORTE_BARRIO;
            // escribir
            ESC("En la localidad de ", REGadopt.local);
            ESC("El total de gatos es de: "TOT_GATOS_LOCALIDAD");
            ESC("El total de perros es de: "TOT_PERROS_LOCALIDAD");
            // acumular
            TOT_PERROS := TOT_PERROS + TOT_PERROS_LOCALIDAD;
            TOT_GATOS := TOT_GATOS + TOT_GATOS_LOCALIDAD;
            // resguardar
            R_ADOPTADOS:= REGadopt.cant_anteriores;
            // poner en 0
            TOT_PERROS_LOCALIDAD:= 0;
            TOT_GATOS_LOCALIDAD:= 0;
        FIN SUBACCION

    PROCESO
        ABRIR/E(Archivo);
        LEER(Archivo, REGadopt);
        CREAR(Archivo_sal);
        TOT_GATOS:= 0;
        TOT_GATOS_BARRIO:= 0;  
        TOT_PERROS_BARRIO:= 0;
        TOT_GATOS_LOCALIDAD:= 0;
        TOT_PERROS_LOCALIDAD:= 0;
        R_LOCALIDAD:= REGadopt.local;
        R_BARRIO:= REGadopt.barrio;

        Mientras NFDA(Archivo) hacer
            si R_LOCALIDAD <> REGadopt.local entonces
                CORTE_LOCALIDAD;
            sino
                si R_BARRIO <> REGadopt.barrio entonces
                    CORTE_BARRIO;
            FIN SI
            si REGadopt.tipo = "C" entonces
                TOT_PERROS_BARRIO:= TOT_PERROS_BARRIOS + 1;
            sino
                TOT_GATOS_BARRIO:= TOT_GATOS_BARRIO + 1;
            fin si
            si REGadopt.cant_anteriores >= 3 entonces
                REG_ADOP_FAMILIA.departamento := REGadopt.depa;
                REG_ADOP_FAMILIA.localidad := REGadopt.local;
                REG_ADOP_FAMILIA.cantidad_adopciones = REGadopt.cant_anteriores;
                ESC(Archivo_sal, REG_ADOP_FAMILIA);
            fin si
            LEER(Archivo, REGadopt);
        fin mientras
        CORTE_LOCALIDAD;
        
        PORCENTAJE_GATOS:= (TOT_GATOS_LOCALIDAD / TOT_GATOS) * 100;
        PORCENTAJE_PERROS:= (TOT_PERROS_LOCALIDAD / TOT_PERROS) * 100;

        ESC("El procentaje de gatos adoptados fue: ", PORCENTAJE_GATOS);
        ESC("El procentaje de perros adoptados fue: ", PORCENTAJE_PERROS);
FIN PROCESO