# TEMAS:

## UNIDAD 3: 
Grafos. Digrafos y grafos: Primeros ejemplos. Nodos, arcos, adyacencia, incidencia, grado,
caminos, ciclos. Subgrafos y dígrafos parciales. Relaciones binarias y digrafos. Conexidad. Matrices y
digrafos. Matriz de adyacencia y de conexión. Suma y producto de digrafos. Grafos regulares, completos,
eulerianos, hamiltonianos. Árboles. Árboles con raíz. Los árboles como estructuras ordenadas y
etiquetadas.

## UNIDAD 4: 
Estructuras Algebraicas finitas. Leyes de composición interna. Propiedades de una ley de
composición interna. Estructuras algebraicas: Grupos. Propiedades y ejemplos en cada caso. Grupos
finitos.

## UNIDAD 5: 
Inducción Matemática. Primeras definiciones. Teorema de Inducción. Principios de inducción
matemática. Ejemplos.

# Conjuntos: Concepto

Un conjunto es simplemente una coleccion desordenada de objetos (Elementos o miembros). Si un conjunto es finito y no muy grande, es posible describirlo por una lista de elementos.
Por ejemplo:
    A = {1,2,3,4}
Esto describe un conjunto A integrado por cuatro elementos 1, 2, 3 y 4. Un conjunto se determina por sus elementos y no por el orden particular en el que se enumeren. 
    A = {1, 3, 4, 2}

Si un conjunto es finito grande o infinito, se describe mediante una propiedad necesaria para ser miembros.
    B = {X| **X es un entero par, positivo**}

    Si x es un conjunto finito, se define 
        |X| = numero de elementos X.

|A| = 4

El conjunto sin elementos se llama **conjunto vacio** (o **nulo**) y se denota por ∅.
∅ = {}.

Dos conjuntos X y Y son iguales y escribimos X = Y si X y Y tienen los mismos elementos. Dicho de otra manera, X = Y si para cada x, si x ∈ X, entonces x ∈ Y. 
∀x((x ∈ X → x ∈ Y ) ∧ (x ∈ Y → x ∈ X))


Por ejemplo:
    A = {x | x^2 + x - 6 = 0} ^ B ={2, -3}

entonces A = B

Supongamos que X y Y son conjuntos. Si todo elemento de X es un elemento de Y, se dice que X es un **Subconjunto** de Y y se escribe X ⊆ Y.

# Subconjunto:
- Un subconjunto es cualquier combinacion de elementos de un conjunto, que puede tener ninguno, algunos o todos sus elementos.
- Como se cuenta cuantos subconjuntos tiene un conjunto?
    Si un conjunto tiene n elementos, entonces tiene: **2^n subconjuntos**.
        **Por que 2^n?**: Porque cada elemento de conjunto tiene dos opciones:
        Opciones:
        - Estar
        - No estar
#### Ejemplo
- 1 elemento: 2 elevado a la 1 = 2 subconjuntos
- 2 elementos: 2 elevado a la 2 = 4 y asi hasta cuantos elementos tenga el conjunto.


Si C = {1, 3} y A = {1,2,3,4} entonces C es un subconjunto de A, y se escribe C ⊆ A


Sea 
    X = {x | 3x^2 - x - 2 = 0}, Y = conjunto de enteros, donde el dominio de discurso es el conjunto de numeros reales. Si x ∈ X, entonces **3x^2 x 2=0**.

Al despejar x, se obtiene x = 1 o x = -2/3. Tomando x = -2/3, se tiene que x ∈ X pero x no pertence a Y.

Si X es un subconjunto de Y y X no es igual Y, se dice que X es un **subconjunto propio** de Y y se escribe X ⊂ Y. El conjunto de todos los subconjuntos (propios o no) de un conjunto X, denotado por P(X), se llama el **conjunto potencia** de X.

Si A = {a, b, c}, los miembros de P(A) son
    ∅, {a}, {b}, {c}, {a, b}, {a, c}, {a, b, c}

- Hay una tabla en la que dice que: Hay dos subconjuntos en donde X contienen **a** y otro subconjunto que X no contienen **a**. 
Esto indica que:
{a}         |   ∅
{a, b}      |   {b}
{a, c}      |   {c}
{a, b, c}   |   {b, c}

Subconjunto de X = {a, b, c} cada subconjunto en la columna derecha se obtiene al quitar el elemento **a** del subconjunto correspondiente en la columna izquierda.


# Que es la induccion matematica?
Es una tecnica que se usa para demostrar que una afirmacion es verdadera para todos los numeros naturales (como n = 1, 2, 3, 4).

Tiene dos pasos claves:
1. Paso base:
Mostras que la afirmacion es verdadera para el primer numero, por ejemplo n = 1.

2. Paso inductivo:
Mostras que si la afirmacion es verdadera para un numero n, entonces tambien es verdadera para n+ 1.

**Que significa el paso inductivo**: (Hipotesis inductiva). **Principio de induccion matematica.**

Supongamos que la afirmacion es cierta para algun numero n, y vamos a demostrar que tambien es cierta para n + 1.

1 + 2 + 3 + ... + n = n (n + 1) / 2
|P(X)| = 2|P(Y)| = 2 * 2^n = 2^n + 1

- Si se tienen dos conjuntos X y Y, existen varias operaciones de conjuntos que implican a X y Y que pueden producir un nuevo conjunto. El conjunto **X ∪ Y = {x | x ∈ X o x ∈ Y}** se llama **union** de X y Y. La union consiste en todos los elementos que pertencen a X o a Y (o a ambos).
- El conjunto **X ∩ Y = {x | x ∈ X y x ∈ Y}** se llama interseccion de X y Y. La **interseccion** consiste en todos los elementos que pertenecen a X y Y. 
- El conjunto **X - Y = {x | x ∈ X y x no pertenece a Y}** se llama **diferencia** (o complemento relativo). La diferencia X - Y consiste en todos los elementos X que no estan en Y.

- Si A = {1, 3, 5} y B = {4, 5, 6}, entonces
    A ∪ B = {1, 3, 4, 5, 6}
    A ∩ B = {5}
    A - B = {1, 3}
    B - A = {4, 6}
Son distintos A - B y B - A 

Conjuntos X y Y son **disjuntos** si **X ∩ Y = ∅**. Disjunta por pares siempre que **X y Y**. 
Por ejemplo **{1, 4, 5} y {2, 6}** (Disjuntos).
**S = {{1, 4, 5}, {2, 6}, {3}, {7, 8}}** (Disjuntos por pares).

- En ocaciones son conjuntos donde todos los subconjuntos de un conjunto mayor se llama **U** conjunto universal o universo. El conjunto U - X se llama **complemento** de X y se escribe X(barra arriba).
---
# Diagramas de Venn:
Vista pictorica de los conjuntos. Es un rectangulo que describe conjunto universal.
El interior del circulo representan los elementos de ese conjunto. Hay dos conjuntos A y B dentro del conjunto universal U. **Los elementos que no estan en A ni en B estan en la region 1** (O sea en el Universo). Los elementos en la region 2 estan en A pero no en B. La region 3 representa A ∩ B, los elementos comunes a A y B. La region 4 comprende los elementos en B pero no en A.

![Diagrama de Venn](/Matematica/LOGICAYESTRUCTURADEDATOS/Nuevos_Resumenes/Img/DiagramVenn.png)

Las regiones especificas de los diagramas de Venn se describen por sombreados. El conjunto A ∪ B se muestra en la figura de la izquierda y en la figura de la derecha representa el conjunto A - B.

