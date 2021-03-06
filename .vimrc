set nocompatible              " required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
"Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'rking/ag.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'a.vim'
Plugin 'majutsushi/tagbar'  
Plugin 'skywind3000/asyncrun.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:SimpylFold_docstring_preview=1
"let python_highlight_all=1
let g:completor_python_binary = '~/.local/lib/python3.6/site-packages/jedi'
let g:jedi#popup_on_dot = 0
set laststatus=2
let g:Powerline_symbols='unicode'
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 使用 murphy 调色板
"colo torte
colo zenburn

" 设置用于GUI图形用户界面的字体列表。
"set guifont=SimSun\ 10
"
set nocompatible
" 设定文件浏览器目录为当前目录
set bsdir=buffer
"set autochdir
" 设置编码
set enc=utf-8
" 设置文件编码
set fenc=utf-8
" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" 指定菜单语言
set langmenu=zh_CN.UTF-8
" 设置开启语法高亮
syntax on
" 查找结果高亮度显示
set hlsearch
set cul
" tab宽度
set tabstop=4
set expandtab
set cindent shiftwidth=4
set autoindent shiftwidth=4
set number  "显示行号  
filetype on   
set history=1000   
set background=dark "设置背景为灰色  
set autoindent "自动对齐，使用上一行的对齐方式  
set smartindent "智能对齐方式  
set showmatch  "设置匹配模式，类似当输入一个左括号时匹配上相应的那个右括号  
set showcmd
set guioptions-=T  
set guioptions-=m 
set ruler "在编辑过程中，在右下角显示光标位置的状态行  
set incsearch "搜索自动定位  
set nowrapscan	
set nobackup  
set noswapfile
set scrolloff=3
hi Normal ctermbg=None
"set lines=35 columns=118
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
"set fdm=indent
set foldmethod=indent
set foldlevel=99
set foldcolumn=4
nnoremap <space> za

"tagbar
"F9触发，设置宽度为30
let g:tagbar_width = 30
nmap <F2> :TagbarToggle<CR>
let g:tagbar_right=1  
"关闭排序,即按标签本身在文件中的位置排序
let g:tagbar_sort = 0

map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']

set tags=tags;
map <F4> :!ctags -R --c++-kinds=+ps --fields=+iaS --extra=+q .<CR> 

map <F5> :call RunCurrFile()<CR>
func! RunCurrFile()
    if &filetype == 'python'
        :AsyncRun python %
	elseif &filetype == 'sh'
        :AsyncRun sh %
	endif
endfunc

nmap <F6> <Esc>:!~/.vim/python/gitdiff2vim.py %<Enter>:vertical diffsplit %_GITHEAD<Enter><Enter>
autocmd BufWinLeave *_GITHEAD silent !rm -rf *_GITHEAD
autocmd BufWinLeave *_GITHEAD silent :diffoff!

nmap <F7> <Esc>:!~/.vim/python/svndiff2vim.py %<Enter>:vertical diffsplit %_SVNHEAD<Enter><Enter>
autocmd BufWinLeave *_SVNHEAD silent !rm -rf *_SVNHEAD
autocmd BufWinLeave *_SVNHEAD silent :diffoff!
autocmd BufWinLeave *_SVNHEAD silent :set nowrap

