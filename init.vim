set guioptions+=m
"set guioptions+=T
set lines=30 columns=90

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



" Here are some basic customizations, please refer to the top of the vimrc
" file for all possible options:
let g:spacevim_default_indent = 3
let g:spacevim_max_column     = 80
let g:spacevim_colorscheme    = 'solarized'
let g:spacevim_plugin_manager = 'dein'  " neobundle or dein or vim-plug

" Change the default directory where all miscellaneous persistent files go.
" By default it is ~/.cache/vimfiles.
" let g:spacevim_plugin_bundle_dir = "~/.cache/vimfiles"

" By default, language specific plugins are not loaded. This can be changed
" with the following:
" let g:spacevim_plugin_groups_exclude = ['ruby', 'python']

" If there are groups you want always loaded, you can use this:
" let g:spacevim_plugin_groups_include = ['go']

" Alternatively, you can set this variable to load exactly what you want:
" let g:spacevim_plugin_groups = ['core', 'web']

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
 set guifont=Source\ Code\ Pro
 set guifontwide=NSimSun:h10
