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

"Pop cyber-punk colorscheme
Plugin 'bignimbus/pop-punk.vim' 
"colorscheme 'pop-punk'

Plugin 'flazz/vim-colorschemes'

"NerdTree
Plugin 'preservim/nerdtree'

"COLORSHEMES"
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'

"DRACULA COLORSHEMES"
Plugin 'dracula/vim', { 'name': 'dracula' }

Plugin 'tomasr/molokai'
Plugin 'fmoralesc/molokayo'

"DEEP WATE COLORSHEMES"
Plugin 'challenger-deep-theme/vim', {'name': 'challenger-deep-theme'}

"NAVBAR"
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


Plugin 'benbusby/vim-earthbound-themes'

call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal


"CYBER PUNK COLORS SETTINGS


"pop-punk ANSI colors for vim terminal
"let g:terminal_ansi_colors = pop_punk#AnsiColors()

 " for the airline theme - note the underscore instead of the hyphen
let g:airline_theme = 'pop_punk'

 " just for fun
let g:airline_section_c = '🎸 %F'

 " for lightline theme - this needs underscore too

"set termguicolors
"colorscheme cyberpunk
"colorscheme fahrenheit "
"colorscheme afterglow
"colorscheme coldgreen
"colorscheme evokai
"colorscheme evolution'
"colorscheme fnaqevan icolorschem forneus 
"colorscheme Benoka
colorscheme candy 
"colorscheme base  
"colorscheme behelit 
"colorscheme pf_earth 
"colorscheme challenger_deep
"colorscheme colorful256
"colorscheme  eink
"colorscheme dw_purple
"colorscheme xoria256 

highlight Normal guibg=black guifg=white
  
set background=dark


highlight Normal guibg=black guifg=white
"set background=dark
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



set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set novisualbell "Не мигать 


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


set clipboard=unnamed
set ruler

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>



" Give more space for displaying messages.
set cmdheight=2



" Выключаем звук в Vim
set visualbell t_vb=

set mouse=a "Включить поддержку мckspace

"Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Вырубаем черточки на табах
set showtabline=1




"control certain syntax highlighting plugins
let g:javascript_plugin_jsdoc = 1


"flow highlighing plugins
let g:javascript_plugin_flow = 1


"I prefer to enable this when I enter a JavaScript or TypeScript buffer, and
"disable it when I leave:
"
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear



"Chalanger deep enable colorscheme 
if has('nvim') || has('termguicolors')
  set termguicolors
endif


"DRACULA THEMES


"syntax enable
"colorscheme dracula





"Для автоотступов 
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction



"nice colorschee ->>>
"soruby



"let g:molokai_original = 1
"Blazer, badwolf colorscheme 
"runtime colors/challenger_deep.vim

"let g:colors_name="Benokai"

"if !exists("g:molokayo#high_contrast#comments")
 "let g:molokayo#high_contrast#comments = 0
"endif

"if !exists("g:molokayo#focus_variant")
"  let g:molokayo#focus_variant = 0
"endif

"hi! Normal guibg=#202020 guifg=#ffffff ctermbg=234 ctermfg=15
 "   if g:molokayo#focus_variant == 1
 
  "  hi! NonText guibg=bg guifg=#303030 ctermbg=bg ctermfg=233

"else
   " hi! link NonText Delimiter
"endif



"hi! Ignore guibg=bg guifg=#303030 ctermbg=bg ctermbg=233
"hi! Special guibg=bg guifg=#66d0ef ctermbg=bg ctermfg=81 gui=italic cterm=italic
"hi! Conceal guifg=#f92672 guibg=bg cterm=bold ctermfg=198 ctermbg=bg
"hi! Search guifg=#000000 guibg=#ffcc00 gui=bold cterm=bold ctermfg=0 ctermbg=220
"hi! Identifier guifg=#ffb700 ctermfg=214
"hi! link Directory SpecialChar
"hi! PreProc guibg=bg guifg=#ff0066 ctermbg=bg ctermfg=50
"hi! PreCondit guibg=bg guifg=#2ee252 ctermbg=bg ctermfg=41
"hi! Title guibg=bg guifg=#ef7511 ctermbg=bg ctermfg=208
"hi! ColorColumn guibg=#1e1e1e ctermbg=233
"hi! Error guibg=#990023 guifg=#ffca00 ctermbg=160 ctermfg=214
"hi! TabLineFill guibg=#202020 guifg=#141414 ctermbg=234 ctermfg=233
"hi! TabLineSel guibg=#141414 guifg=#ffb700 ctermbg=233 ctermfg=214 cterm=bold gui=bold
"hi! TabLine guibg=#141414 guifg=#404040 ctermbg=233 ctermfg=238

"if g:molokayo#high_contrast#comments == 1
 "   hi! Comment guibg=bg guifg=#A6A185 ctermbg=bg ctermfg=248
"endif


" Folds:
"if g:molokayo#focus_variant == 1

 "   hi! FoldColumn guibg=bg guifg=#303030 ctermbg=236 ctermfg=238
"else
 "  hi! FoldColumn guibg=#282828 guifg=#505050 ctermbg=236 ctermfg=244
"endif
"hi! Folded guibg=#252525 guifg=#808080 ctermbg=235 ctermfg=244









" Cursor:
"hi! Cursor guibg=#f92672 guifg=#ffffff gui=bold cterm=bold ctermbg=197 ctermfg=15
"hi! CursorInsert guibg=#0077ff guifg=#ffffff ctermbg=39  ctermfg=15
"hi! CursorVisual guibg=#2077ff guifg=#ffffff ctermbg=38 ctermfg=15
"hi! CursorReplace guibg=#ff2000 guifg=#ffffff ctermbg=196 ctermfg=15



"Settings for pop-cyberpunk 

"scriptencoding utf8

"set t_Co=256
"let &t_Cs = "\e[4:3m"
"let &t_Ce = "\e[4:0m"
"let g:colors_name = "pop-punk"


"Palette

"let s:colors = pop_punk#GetColors()

"let s:white = s:colors.white
"let s:gray_1 = s:colors.gray_1
"let s:gray_2 = s:colors.gray_2
"let s:gray_3 = s:colors.gray_3
"let s:gray_4 = s:colors.gray_4
"let s:gray_5 = s:colors.gray_5
"let s:gray_6 = s:colors.gray_6
"let s:gray_7 = s:colors.gray_7
"let s:black = s:colors.black
"let s:eggshell = s:colors.red_1
"let s:mauve = s:colors.red_1
"let s:blue = s:colors.blue
"let s:teal = s:colors.red_1 
"let s:magenta = s:colors.red_1
"let s:burgundy = s:colors.red_1
"let s:red_1 = s:colors.red_1
"let s:red_2 = s:colors.red_2
"let s:orange = s:colors.red_1 
"let s:sun = s:colors.sun
"let s:yellow = s:colors.red_1
"let s:pink = s:colors.pink
"let s:green = s:colors.red_1
"let s:cobalt_1 = s:colors.red_1

"let s:cobalt_2 = s:colors.red_1








"function! s:h(scope, fg, ...) " bg, attr_list, special
    "let l:fg = copy(a:fg)
    "let l:bg = get(a:, 1, ['NONE', 'NONE'])

    "let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
    "let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

    "let l:special = get(a:, 3, ['NONE', 'NONE'])

    "let l:hl_string = [
            "\ 'highlight', a:scope,
     "       \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
    "        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
   "         \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
  "          \ 'guisp=' . l:special[0],
 "           \]

"    execute join(l:hl_string, ' ')
"endfunction




"User Interface

"set background=dark

"  Required as some plugins will overwrite

