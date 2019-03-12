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
Plugin 'rdnetto/YCM-Generator'
Plugin 'flazz/vim-colorschemes'
Plugin 'Chiel92/vim-autoformat'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
"" to install the plugins run PluginInstall in vim

call vundle#end()            " required
filetype plugin indent on    " required

"" PLUGIN SPECIFIC CONFIGS
" jedi
let g:jedi#completions_enabled = 1

" use the first found python binary
" let g:ycm_python_binary_path = 'python'
"" turn on completion in comments
let g:ycm_complete_in_comments=1
"" load ycm conf by default
let g:ycm_confirm_extra_conf=0
"" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
"" only show completion as a list instead of a sub-window
set completeopt-=preview
"" start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
"" don't cache completion items
let g:ycm_cache_omnifunc=0
"" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1

" syntastic config
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
" set syntastic to passive (check only when invoked)
let g:syntastic_python_checkers = ['pycodestyle']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"" powerline config
set noshowmode " it is already shown by the plugin

set smartindent

set noswapfile

"" STYLE
set t_Co=256
colo distinguished

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
