PROGRAM pascal_ascii;

USES
	crt;

VAR 
	
	c: Char;
	codigo: Integer;
{Realizar un procesamiento y luego que la pueda utilizar cuando yo quiera llamar a la letra ascii}
{Almacenar en una variable temporal la ultima letra para que se pueda ir almacenando a dicha variable}

BEGIN
	WRITE('Ingresa el caracter: ');
	READLN(c);
	codigo:= Ord(c); {Ord devuelve un codigo en ASCII de un caracter(Char)}
	WRITELN('Codigo ASCII de ', c, ' es: ' , codigo);
END.
