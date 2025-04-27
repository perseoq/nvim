# Configuración de Neovim

## Instalar


En terminal pega esta línea:
```js
curl -s https://raw.githubusercontent.com/perseoq/nvim/refs/heads/main/nvim.sh | bash
```

# Instalación de Plugins en Neovim

## Pasos

1. Abre la terminal y ejecuta:
    ```bash
    nvim
    ```
    Te marcará un error. Simplemente presiona `ENTER` para continuar.

2. Dentro de `nvim`, ejecuta el siguiente comando:
    ```vim
    :BundleInstall
    ```

3. Luego, ejecuta también:
    ```vim
    :PluginInstall
    ```


## Visualización
- **Números de línea**: `set number`
- **Codificación UTF-8**:
  - Interna: `set encoding=utf-8`
  - Al guardar: `set fileencoding=utf-8`
  - Terminal: `set termencoding=utf-8`
- **Fuente GUI** (para Neovide): `GuiFont! FiraCode Nerd Font:h12`
- **Caracteres ocultos**:
  - Mostrar: `set list`
  - Personalización: `set listchars=tab:→\ ,space:·`
- **Línea de estado**:
  - Mostrar comandos: `set showcmd`
  - Siempre visible: `set laststatus=2`
  - Personalizada con rama Git y posición del cursor

## Indentación
- **General** (4 espacios):
  - `tabstop=4`, `shiftwidth=4`, `expandtab`, `softtabstop=4`
  - `autoindent`, `smartindent`
- **YAML** (2 espacios):
  - Configuración específica con `autocmd`
- **Dockerfile** (4 espacios):
  - Configuración específica con `autocmd`

## Plugins (Vundle)
1. **NerdTree**:
   - Atajos:
     - `<Alt-l>`: Alternar
     - `<Alt-Left>`: Enfocar
     - `<Alt-Right>`: Volver al buffer
2. **fzf.vim**:
   - `<space>f`: Buscar archivos
3. **Dracula Theme**: `colorscheme dracula`
4. **coc.nvim** (autocompletado):
   - Click derecho: Acciones de código
5. **UltiSnips**:
   - `<tab>`: Expandir snippet
   - `<Shift-tab>`: Retroceder

## Git
- Función `GitBranch()` para mostrar rama actual en la línea de estado

## Atajos
- NerdTree: `<Alt-l>`, `<Alt-Left>`, `<Alt-Right>`
- Buscar archivos: `<space>f`
- Acciones de código: Click derecho
- Snippets: `<tab>` y `<Shift-tab>`

## Apariencia
- Tema Dracula con fondo oscuro
- Línea de estado personalizada

## Extensiones de CoC (Conquer of Completion) Instaladas


### 📋 Requisitos principales

#### **Node.js** (Obligatorio)
- **Descarga**: [https://nodejs.org/](https://nodejs.org/)  
- **Versión mínima recomendada**: `v16.x` o superior  
- **Verificar instalación**:
  ```bash
  node --version
  npm --version

### 🔧 **Cómo instalar**  
Ejecutar en Neovim:  
```vim
:CocInstall coc-pyright coc-sql coc-rust-analyzer coc-clangd coc-tsserver coc-sumneko-lua
```

## 🐍 `coc-pyright`  
- **Lenguaje**: Python  
- **Funcionalidades**:  
  - Autocompletado inteligente  
  - Verificación de tipos estáticos (type checking)  
  - Soporte para Python 3.6+  
  - Análisis de código en tiempo real  
  - Compatible con `mypy` y `PEP 484`  

## 🗃 `coc-sql`  
- **Lenguaje**: SQL  
- **Funcionalidades**:  
  - Autocompletado de sintaxis SQL  
  - Resaltado de errores  
  - Soporte para múltiples motores de bases de datos (MySQL, PostgreSQL, SQLite, etc.)  

## 🦀 `coc-rust-analyzer`  
- **Lenguaje**: Rust  
- **Funcionalidades**:  
  - Integración con `rust-analyzer`  
  - Autocompletado de alto nivel  
  - Análisis de código en tiempo real  
  - Refactorización  
  - Soporte para Cargo y módulos  

## 🖥 `coc-clangd`  
- **Lenguaje**: C/C++  
- **Funcionalidades**:  
  - Basado en `clangd` (LSP oficial de LLVM)  
  - Autocompletado preciso  
  - Diagnóstico de errores y warnings  
  - Soporte para CMake y proyectos grandes  

## 🌐 `coc-tsserver`  
- **Lenguaje**: JavaScript/TypeScript  
- **Funcionalidades**:  
  - Autocompletado para JS/TS  
  - Soporte para proyectos modernos (ES6+, TSX)  
  - Refactorización y renombrado seguro  
  - Compatible con `node_modules` y `package.json`  

## 🎮 `coc-sumneko-lua`  
- **Lenguaje**: Lua  
- **Funcionalidades**:  
  - Soporte para Lua 5.1, 5.3, 5.4 y LuaJIT  
  - Autocompletado contextual  
  - Análisis de código estático  
  - Soporte para Neovim Lua API (útil para desarrollo de plugins)  





