set pyxversion=3
let g:python3_host_prog ="/usr/bin/python3.6"
let mapleader=','

call plug#begin('~/.vim/plugged')
"if has('nvim')
"	Plug 'Shougo/deoplete.nvim',{'do':':UpdateRemotePlugins'}
"else
"	Plug 'Shougo/deoplete.nvim'
"	Plug 'roxma/nvim-yarp'
"	Plug 'roxma/vim-hug-neovim-rpc'
"endif
Plug 'valloric/youcompleteme'
"Plug 'zchee/deoplete-jedi'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'zchee/deoplete-clang'
call plug#end()

"auto complete
"let g:deoplete#enable_at_startup=1
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"auto complete

"YCM 
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'
"YCM
"Nerd Tree Config
map <F3> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
"let g:NERDTreeShowLineNumbers=1  " 是否显示行号
"let g:NERDTreeHidden=0     "不显示隐藏文件
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Nerd Tree Config

"Color Schema
"Color Schema

"Go IDE
let g:go_fmt_command="goimports"
let g:go_auto_typeinfo=1
au filetype go inoremap <buffer> . .<C-x><C-o>
"call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
"Go IDE

"
"Clang IDE


"Clang IDE

" Terminal
if has('nvim')
  fu! OpenTerminal()
   " open split windows on the topleft
   botright split
   " resize the height of terminal windows to 30
   resize 150
   :terminal
  endf
else
  fu! OpenTerminal()
   " open split windows on the topleft
   botright split
   " resize the height of terminal windows to 30
   resize 15
   :call term_start('bash', {'curwin' : 1, 'term_finish' : 'close'})
  endf
endif

nnoremap <F4> :call OpenTerminal()<cr>
" Terminal
