""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                __     _____ __  __ ____   ____ 
"                \ \   / /_ _|  \/  |  _ \ / ___|
"                 \ \ / / | || |\/| | |_) | |    
"                  \ V /  | || |  | |  _ <| |___ 
"                   \_/  |___|_|  |_|_| \_\\____|
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        _             _           
"                  _ __ | | __ _  __ _(_)_ __  ___ 
"                 | '_ \| |/ _` |/ _` | | '_ \/ __|
"                 | |_) | | (_| | (_| | | | | \__ \
"                 | .__/|_|\__,_|\__, |_|_| |_|___/
"                 |_|            |___/             
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    call plug#begin('~/.vim/plugged')

        Plug 'jiangmiao/auto-pairs'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'gorodinskiy/vim-coloresque'
        Plug 'ap/vim-css-color'
        Plug 'sheerun/vim-polyglot'
        Plug 'tpope/vim-commentary'
        Plug 'morhetz/gruvbox'
        Plug 'dracula/vim'
        Plug 'altercation/vim-colors-solarized'
        Plug 'lifepillar/vim-solarized8'

    call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              _                     _                              
"     ___ ___ | | ___  _ __ ___  ___| |__   ___ _ __ ___   ___  ___ 
"    / __/ _ \| |/ _ \| '__/ __|/ __| '_ \ / _ \ '_ ` _ \ / _ \/ __|
"   | (_| (_) | | (_) | |  \__ \ (__| | | |  __/ | | | | |  __/\__ \
"    \___\___/|_|\___/|_|  |___/\___|_| |_|\___|_| |_| |_|\___||___/
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    colorscheme gruvbox 
    set background=dark
    let g:solarized_termcolors=256
    let g:solarized_contrast='normal'
    let g:airline_theme='gruvbox'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        __                                   
"        _ __  _ __ ___ / _| ___ _ __ ___ _ __   ___ ___  ___ 
"       | '_ \| '__/ _ \ |_ / _ \ '__/ _ \ '_ \ / __/ _ \/ __|
"       | |_) | | |  __/  _|  __/ | |  __/ | | | (_|  __/\__ \
"       | .__/|_|  \___|_|  \___|_|  \___|_| |_|\___\___||___/
"       |_|                                                   
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""i""""""""""""

    syntax on           " поддержка синтаксиса
    set t_Co=256        " отображение 256 цветов
    set number          " нумирация строк
    set wildmenu        " дополнительная информация в строке состояния
    set showmatch       " отображение парных символов
    set hlsearch        " подсветка результатов поиска

    set noerrorbells    " отключение звукового сигнала
    set novisualbell    " отключение мигания
    set mouse=a         " поддержка мыши
    set mousehide       " спрятать курсор миши при печати
    set ruler           " показывать положение курсора все время

    set expandtab       " табы пробелами
    set shiftwidth=4    " ширина отступов в пробелах
    set tabstop=4       " табуляция длинной в 4 пробела
    set softtabstop=4   " табуляция длинной в 4 пробела
    set smarttab        " умные табы
    set smartindent     " умные отступы
    set autoindent      " автоотступы

    set ignorecase      " поиск без учена регистра
    set smartcase       " умная чувствительность к регистру
    set incsearch       " поиск по мере набора
    set path+=*         
    set smartcase       " умная чувствительность к регистру
    set shell=zsh       " замена bash на zsh
    set nocompatible    " отключение режима совместимости с vi

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                       _                 
"           _ __ ___   __ _ _ __  _ __ (_)_ __   __ _ ___ 
"          | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` / __|
"          | | | | | | (_| | |_) | |_) | | | | | (_| \__ \
"          |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"                          |_|   |_|            |___/     
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " копирование выделенного текста по ctrl+c (нужен vim-gtk)
    vmap <C-c> "+y 
    highlight Normal ctermbg=None
