set number 


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"Javascript and React
Plugin 'pangloss/vim-javascript'
Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }



" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}


Plugin 'flazz/vim-colorschemes'

"NerdTree
Plugin 'preservim/nerdtree'

"COLORSHEMES"
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'

"DRACULA COLORSHEMES"
Plugin 'dracula/vim', { 'name': 'dracula' }



"DEEP WATE COLORSHEMES"
Plugin 'challenger-deep-theme/vim', {'name': 'challenger-deep-theme'}

"NAVBAR"
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal


"colorscheme base  
colorscheme behelit 
"colorscheme pf_earth
"colorscheme challenger_deep
"colorscheme colorful256
"colorscheme  eink
"colorscheme dw_purple


if has('nvim') || has('termguicolors')
     set termguicolors
endif

let g:lightline = { 'colorscheme': 'challenger_deep'}


" Настройки табов для Python, согласно рекоммендациям
 set tabstop=4 
 set shiftwidth=4
 set expandtab "Ставим табы пробелами
 set softtabstop=4 "4 пробела в табе
" Автоотступ
 set autoindent
 " Подсвечиваем все что можно подсвечивать
 let python_highlight_all = 1
 " Включаем 256 цветов в терминале, мы ведь работаем из иксов?
 " Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

" Перед сохранением вырезаем пробелы на концах (только в .py файлах)

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

set termencoding=utf-8 "Кодировка терминала

set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class


syntax on "Включить подсветку синтаксиса



"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251


" Give more space for displaying messages.
set cmdheight=2



" Выключаем звук в Vim
set visualbell t_vb=

set mouse=a "Включить поддержку мckspace

"Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]

"control certain syntax highlighting plugins
let g:javascript_plugin_jsdoc = 1


"flow highlighing plugins
let g:javascript_plugin_flow = 1


"I prefer to enable this when I enter a JavaScript or TypeScript buffer, and
"disable it when I leave:

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear





"DRACULA THEMES


"syntax enable
"colorscheme dracula


