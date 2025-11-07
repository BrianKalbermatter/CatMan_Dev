PROGRAM funciones; 
// Ejercicio 1.2.1 
// Realice una función que dado un número devuelva su cuadrado.
VAR
resultado: INTEGER;
x: INTEGER;

FUNCTION convertir_numero_cuadrado(num: INTEGER) :INTEGER;
BEGIN
    convertir_numero_cuadrado := num * num;
END;

BEGIN
WRITE();
READLN(x);
resultado := convertir_numero_cuadrado(x);
WRITELN('El cuadrado es: ', resultado);
END.














{Este es otro codigo del que estoy armando.}
{FILE = secuencias}


{type}
	{Arrays = tabla}
    {dias_de_la_semana = (lunes, martes, miercoles, jueves, viernes, sabado, domingo);

var
    dia: dias_de_la_semana;
    llueve: char;
    hace_viento: char;

//No estoy llamando a la funcion y no la llamo y sigo sin llamarla..........
function Hace_buen_dia: boolean;
begin
    if (llueve = 'N') and (hace_viento = 'N') then
        Hace_buen_dia := True
    else
        Hace_buen_dia := False;
end;

function StrADia(str: string): dias_de_la_semana;
begin
    case LowerCase(str) of
        'lunes':     StrADia := lunes;
        'martes':    StrADia := martes;
        'miercoles': StrADia := miercoles;
        'jueves':    StrADia := jueves;
        'viernes':   StrADia := viernes;
        'sabado':    StrADia := sabado;
        'domingo':   StrADia := domingo;
    else
        writeln('Día inválido, se usará lunes por defecto.');
        StrADia := lunes;
    end;
end;

var
    diaTexto: string;
begin
    writeln('RIIING !!');
    write('¿Qué día es hoy? (lunes, martes, ...) ');
    readln(diaTexto);
    dia := StrADia(diaTexto);

    case dia of
        lunes, martes, miercoles, jueves, viernes:
            writeln('LEVÁNTATE, HAY QUE IR A TRABAJAR');
        sabado, domingo:
        begin
            write('¿Llueve (S/N)? ');
            readln(llueve);
            write('¿Hace viento (S/N)? ');
            readln(hace_viento);
            if Hace_buen_dia then
                writeln('LEVÁNTATE Y A DISFRUTAR DEL DÍA')
            else
                writeln('TRANQUILO, PUEDES SEGUIR TUMBADO');
        end;
    end;
end.}











