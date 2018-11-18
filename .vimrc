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
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'maralla/completor.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'rking/ag.vim'
Plugin 'jnurmine/Zenburn'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:SimpylFold_docstring_preview=1
"let python_highlight_all=1
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let g:completor_python_binary = '~/.local/lib/python3.6/site-packages/jedi'
let g:jedi#popup_on_dot = 0
set laststatus=2
let g:Powerline_symbols='unicode'

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" ʹ�� murphy ��ɫ��
"colo torte
colo zenburn

" ��������GUIͼ���û�����������б�
"set guifont=SimSun\ 10
"
set nocompatible
" �趨�ļ������Ŀ¼Ϊ��ǰĿ¼
set bsdir=buffer
"set autochdir
" ���ñ���
set enc=utf-8
" �����ļ�����
set fenc=utf-8
" �����ļ����������ͼ�֧�ָ�ʽ
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" ָ���˵�����
set langmenu=zh_CN.UTF-8
" ���ÿ����﷨����
syntax on
" ���ҽ����������ʾ
set hlsearch
set cul
" tab���
set tabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
set number  "��ʾ�к�  
filetype on   
set history=1000   
set background=dark "���ñ���Ϊ��ɫ  
set autoindent "�Զ����룬ʹ����һ�еĶ��뷽ʽ  
set smartindent "���ܶ��뷽ʽ  
set showmatch  "����ƥ��ģʽ�����Ƶ�����һ��������ʱƥ������Ӧ���Ǹ�������  
set showcmd
set guioptions-=T  
set guioptions-=m 
set ruler "�ڱ༭�����У������½���ʾ���λ�õ�״̬��  
set incsearch "�����Զ���λ  
set nobackup  
set noswapfile
set scrolloff=3
"set lines=35 columns=118
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"set fdm=indent
set foldmethod=indent
set foldlevel=99
set foldcolumn=4
nnoremap <space> za

map <F5> :call RunPython()<CR>
func! RunPython()
    if &filetype == 'python'
        :AsyncRun python %
	elseif &filetype == 'sh'
        :AsyncRun "!time sh %"
	endif
endfunc

