Accion 128 es 
    Ambiente 
        sec1, sec2, sec3: secuencia de caracteres
        v1, v2: caracter
        tot_r, cant_obras, mayor, total_obras, cant_ventas, i,j: Entero
        porc_r: Real

        Función convertir_num (p_v1:caracter) :entero
                según p_v1 hacer
                    ="0": convertir_num:= 0
                    ="1": convertir_num:= 1
                    ="2": convertir_num:= 2
                    ="3": convertir_num:= 3
                    ="4": convertir_num:= 4
                    ="5": convertir_num:= 5
                    ="6": convertir_num:= 6
                    ="7": convertir_num:= 7
                    ="8": convertir_num:= 8
                    ="9": convertir_num:= 9
                fin_segun
        FinFunción

    Proceso
        arr(sec1)
        arr(sec2)
        avz(se1,v1)
        avz(sec2,v2)
        crear(sec3)
        tot_r:=0
        cant_obras:=0
        mayor:=0 
        total_obras:=0

        Mientras NFDS (sec1) y NFDS (sec2) hacer
            Mientras v1= " " y v2= " " hacer
                avz(sec1,v1)
            FinMientras
            Si v1= "R" entonces
                tot_r:= tot_r + 1

                //leo y escribo nombre del artista

                Mientras v1 <> "+" hacer
                    esc(sec3,v1)
                FinMientras
                Esc(sec3, "+")
            Sino
                //salto el nombre
                Mientras v1 <> "+" hacer 
                    avz(sec1,v1)
                FinMientras
            FinSi
            avz(sec1,v1) 

            //salto lugar de nacimiento
            Mientras v1= "+" hacer
                 avz(sec1,v1)
            FinMientras
            avz(sec1,v1)

            //salto edad
            Mientras v1= "+" hacer
                avz(sec1,v1)
            FinMientras
            avz(sec1,v1)

            //leer cantidad de obras
            Mientras  v1 <> "?" hacer
                cant_obras:=cant_obras*10 + convertir_num
            FinMientras
            Esc(sec3, cant_obras)
            esc(sec3, "+")
            avz(sec1,v1)
            total_obras:= total_obras + cant_obras

            //Leer nombre de la obra
            Para i=1 hasta cant_obras hacer
                Mientras v2 <> "," hacer
                    Si v1= "R" entonces
                        esc(sec3,v2)
                    FinSi
                    esc(sec3, "+")
                    avz(sec2,v2)
                FinMientras
                
                //Leer año
                Mientras v2 <> "," hacer
                    Si v1= "R" entonces 
                        esc(sec3,v2) 
                    FinSi
                    esc(sec3,"+")
                    avz(sec2,v2)
                FinMientras

                //saltar precio
                Mientras v2= "$" hacer
                    avz(sec2,v2)
                FinMientras

                Para j= 1 hasta 3 hacer
                    avz(sec2,v2)
                FinPara

                //Leer estado de la obra
                Si v2= "V" entonces
                    cant_ventas:= cant_ventas + 1
                FinSi
                avz(sec2,v2)
            FinPara

            Si v1= "R" entonces
                esc(sec3, "?")
            FinSi

            Si cant_ventas > mayor entonces
                mayor:= cant_ventas
            FinSi

            avz(sec2,v2)
            porc_r= (tot_r * 100) DIV total

        FinMientras

        
        Esc("La cantidad de obras vendidas por un artista:", mayor)
        Esc("El porcentaje de obras renacentistas es:", porc_r)
        Cerrar(sec1)
        cerrar(sec2)
        cerrar(sec3)

FinAcción
