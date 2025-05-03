:set number

set encoding=utf-8          " Codificación interna de Neovim
set fileencoding=utf-8      " Codificación al guardar archivos
set termencoding=utf-8      " Codificación para la terminal (si aplica)

if exists(':GuiFont')
    GuiFont! FiraCode\ Nerd\ Font:h12  " Para Neovide o GUIs
endif

set list                      " Mostrar caracteres ocultos
set listchars=tab:→\ ,space:· " Personalizar cómo se ven

" Soporte para símbolos en la línea de estado (opcional)
set showcmd
set laststatus=2

" Indentación con 4 espacios (en lugar de tabs)
set tabstop=4       " Un tab = 4 espacios visuales
set shiftwidth=4    " Indentación automática = 4 espacios
set expandtab       " Convierte los tabs en espacios
set softtabstop=4   " Retroceso inteligente con 4 espacios
set autoindent      " Mantiene la indentación al cambiar de línea
set smartindent     " Indentación inteligente (para código)

" Indentación para YAML (2 espacios)
autocmd FileType yaml setlocal tabstop=2     " Un tab = 2 espacios visuales
autocmd FileType yaml setlocal shiftwidth=2  " Indentación automática = 2 espacios
autocmd FileType yaml setlocal expandtab     " Convierte tabs en espacios
autocmd FileType yaml setlocal softtabstop=2 " Retroceso inteligente con 2 espacios


" Indentación para Dockerfile (4 espacios)
autocmd FileType dockerfile setlocal tabstop=4
autocmd FileType dockerfile setlocal shiftwidth=4
autocmd FileType dockerfile setlocal expandtab
autocmd FileType dockerfile setlocal softtabstop=4

:echo &filetype  
" Debe mostrar 'yaml' o 'dockerfile'
:set filetype=yaml

" En Linux git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

" En windows git clone https://github.com/VundleVim/Vundle.vim.git $env:LOCALAPPDATA/nvim/bundle/Vundle.vim
" Dar escape y escirbir en la barra de comandos :BundleInstall

" pip3 install --user pynvim

" Configuración básica para Vundle
set nocompatible              " Desactiva compatibilidad con Vi (necesario para Vundle)
filetype off                  " Temporalmente desactiva detección de tipos de archivo

" Define dónde Vundle instalará los plugins
set rtp+=~/.config/nvim/bundle/Vundle.vim

" Inicializa Vundle
call vundle#begin()

" Lista de plugins (Vundle se administra a sí mismo)
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'

Plugin 'junegunn/fzf.vim'
" sudo dnf install fzf required (also apt and brew)

Plugin 'dracula/vim'

" cd ~/.vim/bundle
"git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1
Plugin 'neoclide/coc.nvim'
"CocInstall coc-pyright coc-sql coc-rust-analyzer coc-clangd coc-tsserver coc-sumneko-lua

Plugin 'SirVer/ultisnips'
Plugin 'rust-lang/rust.vim'

" Finaliza la configuración de Vundle
call vundle#end()

" Reactiva detección de tipos de archivo y sintaxis
filetype plugin indent on
syntax on

" Escribir :PluginInstall

nnoremap <A-l> :NERDTreeToggle<cr>
nnoremap <A-Left> :NERDTreeFocus<CR>
nnoremap <A-Right> :wincmd p<CR>

nnoremap <space>f :Files<cr>

" Establecer el tema Dracula
colorscheme dracula

" Configurar fondo oscuro (si aún no está configurado)
set background=dark

" Cambiar color de la línea de estado
highlight StatusLine ctermfg=white ctermbg=blue

set statusline=%f\ %h%m%r%=%{GitBranch()}\ %y\ %p%%\ %l:%c

function! GitBranch()
  if system('git rev-parse --is-inside-work-tree 2>/dev/null') ==# "true\n"
    let l:branch = system('git rev-parse --abbrev-ref HEAD 2>/dev/null')
    return substitute(l:branch, '\n', '', 'g')
  else
    return ''
  endif
endfunction

" Usar click derecho para mostrar acciones
nnoremap <RightMouse> :call CocActionAsync('codeAction')<CR>
vnoremap <RightMouse> :call CocActionAsync('codeAction')<CR>

" Los snippets se guardan en:
" ~/.config/nvim/UltiSnips/python.snippets (para python)
" ~/.config/nvim/UltiSnips/all.snippets (snippets globales)
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Configurar python3_host_prog automáticamente buscando ./env
function! SetupPythonHost()
    if filereadable(getcwd() . '/env/bin/python')
        let g:python3_host_prog = getcwd() . '/env/bin/python'
    elseif exists('$VIRTUAL_ENV')
        let g:python3_host_prog = $VIRTUAL_ENV . '/bin/python'
    else
        let g:python3_host_prog = '/usr/bin/python3'
    endif
endfunction

" Llamar la función al iniciar
call SetupPythonHost()

" Cada vez que cambies de directorio, reconfigura el Python host
autocmd DirChanged * call SetupPythonHost()
let g:rust_clip_command = 'xclip -selection clipboard'
" Guardar y salir con Ctrl + x (como :x)
nnoremap <C-x> :x<CR>
" Salir sin guardar con Ctrl + q (como :q!)
nnoremap <C-q> :q!<CR>





