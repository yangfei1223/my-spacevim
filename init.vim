set guioptions+=m
"set guioptions+=T
set lines=40 columns=80

set encoding=utf-8
set langmenu=zh_CN.utf-8
language messages zh_CN.utf-8

set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
set termencoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Parens auto complete
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>


" Here are some basic customizations, please refer to the top of the vimrc
" file for all possible options:

let g:spacevim_colorscheme_default = 'molokai'
let g:spacevim_colorscheme = 'molokai'
let g:spacevim_default_indent =  4
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_enable_neomake = 0
let g:spacevim_guifonts =  'DejaVu\ Sans\ Mono\  for\ Powerline\ 11'
let g:spacevim_enable_guicolors = 0
let g:spacevim_enable_ycm = 1
let g:spacevim_enable_cursorline = 0
let g:spacevim_vim_help_language = 'chinese'
let g:mapleader               = "\<Space>"
let g:spacevim_default_indent = 3
let g:spacevim_max_column     = 80
let g:spacevim_plugin_manager = 'dein'  " neobundle or dein or vim-plug
let g:airline_powerline_fonts = 1




" Change the default directory where all miscellaneous persistent files go.
" By default it is ~/.cache/vimfiles.
" let g:spacevim_plugin_bundle_dir = "~/.SpaceVim/vimfiles"

" By default, language specific plugins are not loaded. This can be changed
" with the following:
" let g:spacevim_plugin_groups_exclude = ['ruby', 'python']

" If there are groups you want always loaded, you can use this:
" let g:spacevim_plugin_groups_include = ['go']

" Alternatively, you can set this variable to load exactly what you want:
" let g:spacevim_plugin_groups = ['core', 'lang', 'web']

" If there is a particular plugin you don't like, you can define this
" variable to disable them entirely:
" let g:spacevim_disabled_plugins=['vim-foo', 'vim-bar']
" If you want to add some custom plugins, use these options:
 let g:spacevim_custom_plugins = [
 \ ['plasticboy/vim-markdown', {'on_ft' : 'markdown'}],
 \ ['wsdjeg/GitHub.vim'],
 \ ]

" Anything defined here are simply overrides
 set wildignore+=\*/node_modules/\*
 set guifont=Source\ Code\ Pro:h10

 set guifontwide=NSimSun:h10



function! Layers()
    Layer 'fzf'
    Layer 'untie'
    Layer 'better-defaults'
    
    Layer 'emoji'
    Layer 'goyo'
    Layer 'html'
    Layer 'c-c++'
    Layer 'python'
    Layer 'markdown'
    Layer 'graphviz'
    Layer 'airline'

    Layer 'chinese'
    Layer 'text-align'
    Layer 'programing'

    Layer 'ycmd'
    Layer 'syntax-checking'
   " Exclude 'Shougo/denite.nvim'
endfunction


function! UserInit()
    Plug 'extr0py/oni'

endfunction


function! UserConfig()
    color molokai
    nnoremap Q :qa!<CR>

endfunction








