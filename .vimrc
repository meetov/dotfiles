set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" other plugins
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
"" to install the plugins run PluginInstall in vim

call vundle#end()            " required
filetype plugin indent on    " required

"" PLUGIN SPECIFIC CONFIGS
" jedi
let g:jedi#completions_enabled = 0 " so it doesnt conflict with YCM

" syntastic config
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
" set syntastic to passive (check only when invoked)
let g:syntastic_python_checkers = ['pylint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"" airline config
let g:airline_detect_paste=1


"" FORMATTING
" removes trailing whitespaces for .py files
autocmd BufWrite *.py :%s/\s\+$//e

" shorten 4 or more newlines to just 3
" does not completely fix style errors
" but is visually the recommended spacing between
" python module-level functions, classes etc.
autocmd BufWrite *.py :%s/\n\{4,\}/\r\r\r/ge

set tabstop=4
set shiftwidth=4
set noswapfile


"" STYLE
set t_Co=256
colo wombat256i
" transparent background always
hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=none guibg=NONE

" airline style
let g:airline_theme='wombat'


"" KEYBINDINGS
" run the current file through ipython
" enters the ipython shell
nmap <F4> :!ipython -i '%'<CR>

" enable/disable paste
nmap <F5> :set paste<CR>
nmap <F6> :set nopaste<CR>

" trigger syntastic check and reset
nmap <F7> :SyntasticCheck<CR>
nmap <F8> :SyntasticReset<CR>

" toogle tree on/off
nmap <F9> :NERDTreeToggle<CR>

" fugitive
nmap <S-F5> :Gstatus<CR>
nmap <S-F6> :Git add .<CR>
nmap <S-F7> :Gcommit<CR>
nmap <S-F8> :Gpush<CR>
nmap <S-F9> :Gpull<CR>
