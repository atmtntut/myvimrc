" 使用 murphy 调色板
colo desert
" 设置用于GUI图形用户界面的字体列表。
"set guifont=SimSun\ 10
"
set nocompatible
" 设定文件浏览器目录为当前目录
set bsdir=buffer
set autochdir
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
" tab宽度
set tabstop=4
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
set nobackup  
set noswapfile
set scrolloff=5
set lines=35 columns=118

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
