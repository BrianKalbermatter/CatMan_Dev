PAGINA 338
Grafos. Digrafos y grafos: Primeros ejemplos. Nodos, arcos, adyacencia, incidencia, grado, caminos, ciclos. Subgrafos y dígrafos parciales. Relaciones binarias y digrafos.
Conexidad. Matrices y digrafos. Matriz de adyacencia y de conexión. Suma y producto de digrafos. Grafos regulares, completos, eulerianos, hamiltonianos.

# Grafos: **GRAFICA**.
Un grafo es una estructura matematica usada para modelar relaciones entre cosas. Tiene dos componentes principales:
- V: Es el conjunto de **vertices** (tambien llamados nodos).
Ejemplo: **V = {A, B, C, D}**

- E: es el conjunto de **aristas** tambien llamados arcos o enlaces, que conectan pares de vertices.
Ejemplo: **E = {(A, B), (B, C)}**

Entonces, si una grafica se llama G, se escribe:
G = (V, E)
G esta compuesta por un conjunto de vertices V y un conjunto de aristas E.

## Grafica NO dirigida (no orientados): Bidireccionales
- **Las aristas no tienen direccion.**
- Es lo mismo una arista A y B, puedes ir de A a B o de B a A.

## Grafica dirigida (orientados): Digrafos
- **Las aristan si tienen direccion.**
- El orden importa: (A, B) no es lo mismo que (B, A).
- Una arista e = (v, w) indica una conexion desde c hacia w, no al reves.
- Las conexiones son **Unidireccionales**.

**Vertice Accesible**:
    Es aquel al que podes llegar desde otro vertice, siguiendo las aristas del grafo (respetando la direccion si el grafo es orientado).

Conceptos Fundamentales:
Vertice ayacentes:**Dos vertices conectados por una arista**.
Arista incidente: **Una arista es incidente a los vertices que conecta**.
Camino: **Secuencia de vertices conectados por aristas**.
Ciclo: **Camino cerrado donde el primer y ultimo vertice son el mismo**.
Grafo conexo: **Existe un camino entre cualquier par de vertices**.
Componente conexa: **Subgrafos conexo (porcion aislada del grafo)**.
Grado de un vertice: **Numero de aristas que inciden en el**.

Se pueden representar los gafos como:
## Matrices de Adyacencia:
tabla n x n:
- Las filas representan el origen.
- Las columnas representan el destino.
- Si hay una arista de i a j, se pone 1 (o peso si es ponderado).
- Si no hay aristas, se pone 0.


# Conexas y Fuertemente Conexas:



## Listas de Adyacencia:
- Una lista de adyacencia representa un grafo como una coleccion de listas, donde cada vertice tiene una lista que contiene los vertices a los que esta conectado.
- Se usa tanto para grafos como no dirigidos, y es especialmente eficiente si el grafo tiene pocas aristas.

# DIFERENCIAS Y COMPLEMENTOS:


