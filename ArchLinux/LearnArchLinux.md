# Update Driver Nvidia Settings
sudo pacman -Syu




























🧠 1. Conocimientos previos (antes de instalar Arch)

Debes estar cómodo con:

    Comandos básicos de Linux (cd, ls, cp, mv, rm, nano, vim)

    Uso del terminal (CLI)

    Conocer qué son particiones y sistemas de archivos (ext4, swap, etc.)

    Saber qué es UEFI vs BIOS

    Comprender cómo funciona una red (al menos lo básico)

    Saber qué es un bootloader (como GRUB)

Puedes practicar todo esto con una distro como Ubuntu o Fedora antes de pasar a Arch.

🧱 3. Instalación paso a paso (en consola)
🔹 Configurar teclado:

loadkeys la-latin1

🔹 Ver red:

ping archlinux.org

🔹 Configurar el disco (usando fdisk, cfdisk, o parted)

    Crea al menos una partición raíz (/)

    Opcional: swap y /home

🔹 Formatear:

mkfs.ext4 /dev/sdX1
mkswap /dev/sdX2
swapon /dev/sdX2

🔹 Montar:

mount /dev/sdX1 /mnt

🔹 Instalar el sistema base:

pacstrap /mnt base linux linux-firmware

🔹 Generar fstab:

genfstab -U /mnt >> /mnt/etc/fstab

🔹 Entrar al nuevo sistema:

arch-chroot /mnt

⚙️ 4. Configuración básica
🔹 Zona horaria:

ln -sf /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime
hwclock --systohc

🔹 Idioma:

Edita /etc/locale.gen y descomenta:

es_AR.UTF-8 UTF-8

Luego:

locale-gen
echo "LANG=es_AR.UTF-8" > /etc/locale.conf

🔹 Nombre del host:

echo "archpc" > /etc/hostname

🔹 Agregar usuario:

useradd -m -G wheel tuusuario
passwd tuusuario

Editar /etc/sudoers con visudo y descomentar:

%wheel ALL=(ALL:ALL) ALL

🥾 5. Instalar GRUB (bootloader)

pacman -S grub
grub-install --target=i386-pc /dev/sdX  # si usas BIOS
grub-mkconfig -o /boot/grub/grub.cfg

🖥️ 6. Entorno gráfico (opcional)
🔹 Instalar X:

pacman -S xorg xorg-server

🔹 Instalar un entorno como KDE, GNOME o XFCE:

pacman -S plasma kde-applications sddm
systemctl enable sddm

O bien:

pacman -S gnome gdm
systemctl enable gdm

📦 7. AUR y paquetes adicionales

Instala yay o paru para poder usar el AUR (repositorio comunitario):

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

🧽 8. Mantenimiento y buenas prácticas

    Actualiza tu sistema con:

sudo pacman -Syu

    Revisa los logs con journalctl

    Arch no hace versiones: rolling release → siempre actualizado

📚 9. Recursos para seguir aprendiendo

    📖 Arch Wiki (oficial)

    📺 YouTube: “Chris Titus Tech” o “DistroTube”

    📘 Libros: “The Linux Command Line” de William Shotts

✅ 10. Practica en máquina virtual

Antes de instalar en tu equipo real, usa:

    VirtualBox

    QEMU

    VMware











```bash

# 🌳 1. Árbol básico del sistema de archivos en Arch Linux
# Este es el estándar de Linux Filesystem Hierarchy (FHS) que Arch sigue, sin importar si usás GNOME, KDE o solo consola:
    /
├── bin/           → comandos esenciales (ls, cp, mv, etc.)
├── boot/          → archivos de arranque (vmlinuz, initramfs, grub/)
├── dev/           → dispositivos del sistema (sda, tty, null, etc.)
├── etc/           → archivos de configuración global (/etc/pacman.conf, etc.)
├── home/          → carpetas de usuario (/home/tuusuario)
├── lib/           → bibliotecas esenciales
├── media/         → punto de montaje para USB/CD, etc.
├── mnt/           → montaje manual (temporal)
├── opt/           → software opcional
├── proc/          → información del kernel y procesos
├── root/          → home del superusuario (root)
├── run/           → datos en tiempo de ejecución (runtime)
├── sbin/          → binarios de administración del sistema
├── srv/           → datos para servicios (ej. FTP, HTTP)
├── sys/           → interfaz con el kernel (sysfs)
├── tmp/           → archivos temporales
├── usr/           → software de usuario, apps
│   ├── bin/       → binarios no esenciales
│   ├── lib/
│   └── share/
└── var/           → archivos variables (logs, cache, spool)

/usr/bin/         → binarios GNOME (como `gnome-shell`, `gnome-session`, `gnome-terminal`)
/usr/lib/         → bibliotecas como `libgnome*`, `libglib*`, `libgtk*`
/usr/share/       → íconos, temas, schemas, traducciones (GNOME guarda mucho aquí)
/etc/             → configuración de GDM (display manager) y GNOME (`/etc/gdm`, `/etc/dconf`)
/var/lib/         → archivos de GDM (base de datos de sesiones, logs, etc.)
/home/usuario/.config/ → configuraciones del usuario (ej. `dconf`, `gnome-terminal`, `nautilus`)
/home/usuario/.local/share/ → datos de usuario (apps de GNOME, extensiones, íconos personalizados)

# 🖥️ 2. ¿Qué agrega GNOME al árbol de archivos?
# Cuando instalás GNOME (por ejemplo con pacman -S gnome), se añaden archivos principalmente en estas rutas:

/usr/bin/         → binarios GNOME (como `gnome-shell`, `gnome-session`, `gnome-terminal`)
/usr/lib/         → bibliotecas como `libgnome*`, `libglib*`, `libgtk*`
/usr/share/       → íconos, temas, schemas, traducciones (GNOME guarda mucho aquí)
/etc/             → configuración de GDM (display manager) y GNOME (`/etc/gdm`, `/etc/dconf`)
/var/lib/         → archivos de GDM (base de datos de sesiones, logs, etc.)
/home/usuario/.config/ → configuraciones del usuario (ej. `dconf`, `gnome-terminal`, `nautilus`)
/home/usuario/.local/share/ → datos de usuario (apps de GNOME, extensiones, íconos personalizados)
# Ejemplo de estructura específica de GNOME
/etc/gdm/
├── custom.conf     → configuración de GDM (login)
    
/usr/share/gnome/
├── background/     → fondos predeterminados
├── session/        → configuración de sesiones de escritorio
├── shell/          → temas y configuraciones de gnome-shell
    
/home/usuario/
├── .config/
│   ├── dconf/        → base de datos de configuraciones
│   └── gnome-terminal/
├── .local/share/
│   ├── gnome-shell/
│   └── nautilus/

```