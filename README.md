# Configuración de Neovim

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

## Instalar

En terminal pega esta línea:
```bash
curl -s https://raw.githubusercontent.com/perseoq/nvim/refs/heads/main/nvim.sh | bash
```
