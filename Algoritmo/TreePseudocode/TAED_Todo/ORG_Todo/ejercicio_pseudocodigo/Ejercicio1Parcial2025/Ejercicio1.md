Ejercicio:
La FIFA desea analizar la participacion de los jugadores por equipo en el Mundial de Clubes. Para ello cuenta con dos secuencias de caracteres:

**SECUENCIA_JUGADORES**
Confederacion-NombreEquipo-NombreJugador*Edad(2)NroJugador(2)#NombreJugador*Edad(2)NroJugador(2)#...%NombreEquipo-NombreJugador*...$Confederacion-...

El guion - separa Confederacion de NombreEquip. El nombre del jugador termina con *, Confederacion finaliza con $, Equipo finaliza con %, jugador termina con #. Por cada confederacion existen varios equipo y por cada equipo existen varios jugadores.

UEFA-Real Madrid-Luka Modric*3801#Vinicius Jr*2402#Jude
Bellingham*2103#%Machester City-Kevin De Bruyne*3304#Erling Haaland*2405#Phil
Foden*2306#%$CONMEBOL-Fluminense-German Cano*3607#Andre
Trindade*2208#%Boca Juniors-Edinson Cavani*3709#Luis Advincula*3410#%$*
**SECUENCIA_ESTADISTICAS**: Correspondencia 1 a 1 con cada jugador.

Goles(2caracteres)Asistencias(2caracteres)MinutosJugados(4caracteres)TarjetaAmarillas(1caracter)TarjetasRojas(1caracter)#...
010102700#0403031210#02010204500#0501030010#0600028001#*

