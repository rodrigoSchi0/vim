set nocompatible 
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'dracula/vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'lervag/vimtex'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'rakr/vim-one'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'
Plugin 'liuchengxu/space-vim-dark'

call vundle#end()            
"filetype plugin indent on  
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set nu
set history=1000
set tabstop=4
set shiftwidth=4
set title
set ai
syntax on
let g:molokai_original = 1
colorscheme molokai
hi Comment cterm=italic
set t_ut=
set visualbell
set ic
set incsearch
set hlsearch
set fileencodings=utf-8
set encoding=utf-8
set tags=tags;
set nobackup
set nowritebackup
set noswapfile
set backspace=2
set autowrite

" NERDTree -> f5
nnoremap <F5> :NERDTreeToggle<CR>
set laststatus=2

"""LATEX
let g:tex_flavor = "latex"
autocmd FileType tex set spell spelllang=pt,en
autocmd FileType tex set tw=80 ""Break line

""http://www.lukesmith.xyz/conf/.vimrc
"Navigation
autocmd Filetype tex inoremap <Space><Space> <Esc>/(<>)<Enter>"_c4l
autocmd Filetype tex inoremap <Space><Backspace> (<>)<Esc>/(<>)<Enter>"_c4l

autocmd FileType tex inoremap ;fr \begin{frame}<Enter>\frametitle{}<Enter><Enter>(<>)<Enter><Enter>\end{frame}<Enter><Enter>(<>)<Esc>6kf}i
autocmd FileType tex inoremap ;fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter>(<>)<Esc>3kA
autocmd FileType tex inoremap ;exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter>(<>)<Esc>3kA
autocmd FileType tex inoremap ;em \emph{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;bf \textbf{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;it \textit{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;ct \citet{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;p \citep{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;glos {\gll<Space>(<>)<Space>\\<Enter>(<>)<Space>\\<Enter>\trans{``(<>)''}}<Esc>2k2bcw
autocmd FileType tex inoremap ;x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
autocmd FileType tex inoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter>(<>)<Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter>(<>)<Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ref \ref{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;t \begin{tabular}<Enter>(<>)<Enter>\end{tabular}<Enter><Enter>(<>)<Esc>4kA{}<Esc>i
autocmd FileType tex inoremap ;tab \begin{tableau}<Enter>\inp{(<>)}<Tab>\const{(<>)}<Tab>(<>)<Enter>(<>)<Enter>\end{tableau}<Enter><Enter>(<>)<Esc>5kA{}<Esc>i
autocmd FileType tex inoremap ;can \cand{}<Tab>(<>)<Esc>T{i
autocmd FileType tex inoremap ;con \const{}<Tab>(<>)<Esc>T{i
autocmd FileType tex inoremap ;v \vio{}<Tab>(<>)<Esc>T{i
autocmd FileType tex inoremap ;a \href{}{(<>)}<Space>(<>)<Esc>2T{i
autocmd FileType tex inoremap ;sc \textsc{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;sec \section{}<Enter><Enter>(<>)<Esc>2kf}i
autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter>(<>)<Esc>2kf}i
autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter>(<>)<Esc>2kf}i
autocmd FileType tex inoremap ;st <Esc>F{i*<Esc>f}i
autocmd FileType tex inoremap ;beg \begin{%DELRN%}<Enter>(<>)<Enter>\end{%DELRN%}<Enter><Enter>(<>)<Esc>4kfR:MultipleCursorsFind<Space>%DELRN%<Enter>c
autocmd FileType tex inoremap ;up \usepackage{}<Esc>i
autocmd FileType tex inoremap ;tt \texttt{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;bt {\blindtext}
autocmd FileType tex inoremap ;nu $\varnothing$
autocmd FileType tex inoremap ;col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter>(<>)<Enter>\end{column}<Enter>\end{columns}<Esc>5kA
"""END

""".bib
autocmd Filetype bib inoremap <Space><Space> <Esc>/(<>)<Enter>"_c4l
autocmd Filetype bib inoremap <Space><Backspace> (<>)<Esc>/(<>)<Enter>"_c4l
autocmd FileType bib inoremap ;a @article{<Enter><Tab>author<Space>=<Space>{(<>)},<Enter>year<Space>=<Space>{(<>)},<Enter>title<Space>=<Space>{(<>)},<Enter>journal<Space>=<Space>{(<>)},<Enter>volume<Space>=<Space>{(<>)},<Enter>pages<Space>=<Space>{(<>)}<Enter><BS>}<Enter>(<>)<Esc>8kA,<Esc>i
autocmd FileType bib inoremap ;b @book{<Enter><Tab>author<Space>=<Space>{(<>)},<Enter>title<Space>=<Space>{(<>)},<Enter>publisher<Space>=<Space>{(<>)},<Enter>year<Space>=<Space>{(<>)},<Enter>edition<Space>=<Space>{(<>)}<Enter><BS>}<Enter>(<>)<Esc>7kA,<Esc>i
autocmd FileType bib inoremap ;c @incollection{<Enter><Tab>author<Space>=<Space>{(<>)},<Enter>title<Space>=<Space>{(<>)},<Enter>booktitle<Space>=<Space>{(<>)},<Enter>publisher<Space>=<Space>{(<>)},<Enter>year<Space>=<Space>{(<>)},<Enter>editor<Space>=<Space>{(<>)}<Enter><BS>}<Enter>(<>)<Esc>8kA,<Esc>i
"""END

""" GO
autocmd FileType go nmap <leader>r  <Plug>(go-run)
