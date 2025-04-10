# OSoil
# 🚀 ¿Cómo arrancar?
# Guia:

``` 
    https://wiki.osdev.org/Expanded_Main_Page
    Writing a Simple Operating System — from Scratch (James Molloy)
```

## 🧩 Paso 1: Crea un bootloader
**Un programa que corre en los primeros 512 bytes del disco.**

**Escrito en ASM (assembly).**

**Lo cargas usando BIOS.**

**Tu objetivo es simplemente mostrar un "Hola Mundo" en pantalla desde el bootloader.**

**Herramientas:**

**Ensamblador: NASM**

**Emulador: QEMU (o Bochs)**

**Para generar la ISO: dd, mkisofs, etc.**

# 🔧 Paso 2: Cargar un kernel en C
## Modificás tu bootloader para que cargue tu kernel (escrito en C).

**Usás un archivo .bin y le indicás al bootloader que lo cargue en memoria.**

## Ya podrías hacer cosas como imprimir texto, leer del teclado, y eventualmente manejar interrupciones.

# 🧰 Herramientas importantes:
## NASM (ensamblador)

## GCC (cross-compilation, ej. i686-elf-gcc)

## QEMU (para probar tu OS sin dañar tu PC)

## GRUB (como bootloader real una vez que superás el básico)

## Makefiles (para compilar más fácilmente)

# Comenzar a practicar assembly es importante para el desarrollo de la consola de mi Sistema Operativo
**Crea un gestionador de procesos para que tengan prioridades las tareas del sistema operativo y gestionarlas con las que se ejecutan.**


# Configurar el Bootloader y aprender C 
## - que es un Bootloader 