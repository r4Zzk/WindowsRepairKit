# 🛠️ Windows Repair Toolkit (Batch)

![Platform](https://img.shields.io/badge/platform-Windows-blue)
![Language](https://img.shields.io/badge/language-Batchfile-lightgrey)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-learning--project-yellow)


Una herramienta de **diagnóstico y reparación básica de Windows**, desarrollada en **Batch (.cmd)**, con menú interactivo en consola y ejecución automática con privilegios de administrador.


---

## Características

- Menú interactivo en consola (CMD)
- Elevación automática a **Administrador (UAC)**
- Soporte UTF-8 (`chcp 65001`)
- Ejecución guiada de comandos del sistema

---

## Funcionalidades

| Opción | Acción | Descripción |
|------|------|------|
| 1 | DISM | Repara la imagen de Windows |
| 2 | SFC | Escaneo y reparación de archivos del sistema |
| 3 | CHKDSK | Verificación del disco |
| 4 | Diagnóstico rápido | Verificación sin reparación |
| 0 | Salir | Cierra el programa |

---

## 🧰 Comandos utilizados

```cmd
DISM /Online /Cleanup-Image /RestoreHealth
sfc /scannow
sfc /verifyonly
chkdsk C: /f
```

⚠️ Algunos comandos pueden tardar varios minutos y/o requerir reinicio.

## Requisitos

Windows 10 / Windows 11

Permisos de Administrador

Consola CMD habilitada

## Instalación y uso

Clonar el repositorio:

git clone https://github.com/tu-usuario/windows-repair-toolkit.git


Ejecutar el archivo:

reparacion_windows.cmd


Aceptar el aviso de UAC y seleccionar una opción del menú.

## Advertencias

Este script no reemplaza herramientas profesionales de diagnóstico.

CHKDSK puede solicitar reiniciar el sistema.

Usar bajo responsabilidad del usuario.


## Roadmap (ideas futuras)

 Activar/desactivar comandos por configuración

 Logs automáticos en archivo .txt

 Soporte para múltiples discos

 Detección automática de errores

 Versión PowerShell

## Licencia

Este proyecto está bajo licencia MIT.
Ver el archivo LICENSE
 para más información.
 
---
