# Mapa de Ruta - Compilador en Pascal:

1. Fundamentos previos
- Lenguaje Pascal.
    - Sintaxis basica y avanzada.
    - Tipos de datos, funciones y procedimientos.
- Teoria de Compiladores.
    - Etapas: analisis lexico, sintatico, semantico, optimizacion, generacion de codigo.
    - **Automatas finitos y gramaticas libres de contexto**.

2. Diseño del compilador
- Definir lenguaje fuente (mini-Pascal o subconjunto de Pascal)
- Especificar gramática (BNF o EBNF)
- Decidir arquitectura:
    - Intérprete vs compilador a código máquina
    - Generar código intermedio (por ejemplo, P-code).

3. Etapa de análisis léxico
- Definir tokens:
    - Palabras clave (if, while, begin, end, etc.)
    - Identificadores
    - Literales (números, strings)
    - Operadores y símbolos
- Implementar analizador léxico:
    - Usar tablas de símbolos
    - Convertir texto en lista de tokens

4. Etapa de análisis sintáctico
- Seleccionar estrategia:
    - Descendente recursivo (fácil en Pascal)
    - LALR(1) con herramientas tipo Yacc (menos común en Pascal puro)
- Parsear tokens según gramática
- Construir Árbol Sintáctico Abstracto (AST)

5. Análisis semántico
- Verificación de tipos
- Chequear variables no declaradas
- Compatibilidad de operaciones
- Anotaciones en el AST

6. Generación de código intermedio
- Definir una representación (P-code, bytecode, tres direcciones)
- Convertir AST a código intermedio

7. Optimización (opcional al inicio)
- Eliminación de código muerto
- Simplificación de expresiones
- Reutilización de registros

8. Generación de código final
- Destino:
    - Ensamblador
    - Máquina virtual (interpretar P-code)
- Ensamblar y enlazar
- Probar con programas pequeños

9. Pruebas y depuración
- Crear suite de pruebas
- Manejar errores de compilación con mensajes claros
- Medir rendimiento y corregir bugs

10. Extras y mejoras
- Soporte para más instrucciones y tipos de datos
- Mejor manejo de errores
- IDE o entorno gráfico simple
- Documentación completa del lenguaje y compilador

# Ver en este orden de GUIA
1 Léxico → 2 Sintáctico → 3 Semántico → 4 Código intermedio → 5 Código final.