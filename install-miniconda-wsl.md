# 📦 Guía de instalación de Miniconda en WSL (Ubuntu)

Esta guía explica cómo instalar **Miniconda** en WSL (Ubuntu), configurarlo para **no activar automáticamente el entorno base** y poder crear/usar entornos solo cuando quieras.

---

## 1️⃣ Descargar Miniconda

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```

## 2️⃣ Instalar Miniconda

```bash
bash ~/Miniconda3-latest-Linux-x86_64.sh
```

Durante la instalación, cuando pregunte:

```
Do you wish the installer to initialize Miniconda3 by running conda init? [yes|no]
```

**Responde `no`** para evitar que el entorno `base` se active automáticamente al abrir la terminal.

---

## 3️⃣ Activar Conda solo cuando quieras

Agrega esta línea a tu `~/.zshrc` (o `~/.bashrc` si usas bash):

```bash
# Activar Conda solo cuando yo quiera
. "$HOME/miniconda3/etc/profile.d/conda.sh"
```

---

## 4️⃣ Recargar configuración

```bash
source ~/.zshrc
```

---

## 5️⃣ Probar instalación

```bash
conda --version
```

Deberías ver algo como:

```
conda 24.x.x
```

---

## 6️⃣ Crear y gestionar entornos

### Crear entorno con versión específica de Python

```bash
conda create --name mi_entorno python=3.12
```

### Activar entorno

```bash
conda activate mi_entorno
```

### Desactivar entorno

```bash
conda deactivate
```

### Listar entornos

```bash
conda env list
```

### Eliminar entorno

```bash
conda remove --name mi_entorno --all
```

---

## 7️⃣ Instalar paquetes

### Instalar paquete

```bash
conda install numpy
```

### Instalar paquete desde conda-forge

```bash
conda install -c conda-forge pandas
```

---

## 8️⃣ Exportar e importar entornos

### Exportar

```bash
conda env export > environment.yml
```

### Importar

```bash
conda env create -f environment.yml
```

---

✅ **Listo**: Ahora tienes Miniconda instalado en WSL Ubuntu y configurado para iniciarse solo cuando tú lo decidas.

```
Si quieres, puedo hacerte **otra versión más pro** con alias y funciones para WSL + zsh, así puedes crear/activar entornos en un solo comando.
¿Quieres que te la prepare?
```
