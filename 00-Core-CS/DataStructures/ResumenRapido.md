# LOGICA PROPOSICIONAL
Que es una proposicion: **Es una afirmacion que puede ser verdadera o falsa, pero no ambas a la vez** Ejemplo: 
- "Hoy es lunes." ✅ Es una proposicion. Puede ser V o F.
- "Que hora es?" ❌ No es una proposicion(ES UNA PREGUNTA).

### Conectores Logicos:

Conector **Nombre** Significado
   -p   | Negacion |  Lo contrario de p
   p^q  | Conjuncion| "Y" (ambos deben ser verdadero)
   pvq  | Diyuncion | "O" (al menos uno debe ser verdadero)
   p->q | Condicional| "Si p, entonces q"
   p<-> | Bicondicional| "p si y solo si q"

## Tipos de proposiciones:

Tautologia: Siempre verdadera. Ej: pV -p(**se suma por eso es una siempre verdadero**).
Contradiccion: Siempre falsa. Ej: p^-p(**se multiplica por eso siempre es falso**).
Contingencia: Depende de los valores de las variables. Ej: p(**Puede ser ambos valores a la vez**) Esto sera cuantico?

## Leyes logicas clave:

1. Ley Condicional: Diyuncion y Conjuncion
p->q ≡ **-p V q** - Diyuncion
p->q ≡ **-(p ^ -q)** - Conjuncion

2. Ley de De Morgan:
-(p V q) ≡ **-p^-q**
-(p ^ q) ≡ **-pV-q**

3. Ley doble Negacion:
-(-p) ≡ **p**

4. Ley de abosrcion:
pV(p^q) ≡ **p**
p^(pvq) ≡ **p**

5. Ley Conmutativa: **El orden NO afecta el resultado**. 
p V q V r ≡ **r V q V p**
💡 Tip: Puedo cambiar el orden cuando te convenga para agrupar o simplificar.

6. Ley Distributiva: 
p∧(q∨r)≡ **(p∧q)∨(p∧r)**
p∨(q∧r) ≡ **(p∨q)∧(p∨r)**
💡 Tip: La distributiva te permite romper parentesis y reorganizar expresiones.

7. Ley Idempotencia: 
p v p ≡ **p**
p ^ p ≡ **p**

8. Ley de Dominacion: 
p v To ≡ To **OR**(Significa que el resultado es siempre verdadero).
p ^ Fo ≡ Fo **AND**(Significa que el resultado es siempre falso).

9. Ley Asociativa:
(p v q) v r ≡ **p v (q v r)**
(p ^ q) ^ r ≡ **p ^ (q ^ r)**

10. Ley de negacion o inversas:
pv-p ≡ **To**
p^-p ≡ **Fo**


---

**TABLA DE VERDAD:** Se utilizan para verificar proposiciones y comprobar que estan bien planteadas y simplificadas. 
| p | q | p ∧ q |
| - | - | ----- |
| V | V |   V   |
| V | F |   F   |
| F | V |   F   |
| F | F |   F   |


# ALGEBRA DE BOOLE

📚 El algebra de Boole es un sistema matematico que trabaja con valores binarios:
- 0 (Falso)
- 1 (Verdadero)
Es la base de la logica digital, los circuitos electricos y la programacion.

📚 Mapa de Karnaugh:
- Simplifica rapidamente expresiones booleanas, evita errores que suelen pasar al simplificar solo con algebra.
- Facilita el diseno de los circuitos mas pequenos y eficientes.

# SISTEMA DE NUMERACION
- Si el numero esta en una base distinta de **10** y quiero pasarlo a base **10**:
## Multiplicar:
CADA DIGITO POR LA POTENCIA DE SU BASE SEGUN LA POSICION
De izquierda a derecha: base^n+base^n-1
