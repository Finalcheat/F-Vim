" 修改leader键
let mapleader = ','
let g:mapleader = ','

" 开启语法高亮
syntax on

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif


"==========================================
" General Settings 基础设置
"==========================================

"以下配置有详细说明，一些特性不喜欢可以直接注解掉

"set guifont=Monaco:h20          " 字体 && 字号

" history存储容量
" set history=2000

"检测文件类型
" filetype on
"针对不同的文件类型采用不同的缩进格式
" filetype indent on
"允许插件
" filetype plugin on
"启动自动补全
" filetype plugin indent on

" set autoread          " 文件修改之后自动载入。
" set shortmess=atI       " 启动的时候不显示那个援助索马里儿童的提示


" 备份,到另一个位置. 防止误删, 目前是取消备份
"set backup
"set backupext=.bak
"set backupdir=/tmp/vimbk/

" 取消备份。 视情况自己改
" set nobackup
" 关闭交换文件
set noswapfile



set wildignore=*.swp,*.bak,*.pyc,*.class,.svn

" 突出显示当前行等
" set cursorcolumn
" 突出显示当前行
set cursorline          


"设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
"好处：误删什么的，如果以前屏幕打开，可以找回
"set t_ti= t_te=





"- 则点击光标不会换,用于复制
" set mouse-=a             " 鼠标暂不启用, 键盘党....
" set mouse=a                 " Automatically enable mouse usage
" set mousehide               " Hide the mouse cursor while typing

" 检索时忽略大小写
" set ignorecase

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
set backspace=indent,eol,start




"==========================================
" Display Settings 展示/排版等界面格式设置
"==========================================
"
"显示当前的行号列号：
set ruler
""在状态栏显示正在输入的命令
" set showcmd
" 左下角显示当前vim模式
" set showmode

" 命令行（在状态行下）的高度，默认为1，这里是2
" set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line - use 2 lines for the status bar
" set laststatus=2

"显示行号：
set number
" 取消换行。
" set nowrap




" 缩进配置

" set smartindent   " Smart indent
" set autoindent    " 打开自动缩进
" never add copyindent, case error   " copy the previous indentation on autoindenting

" tab相关变更
set tabstop=4     " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=4  " 每一次缩进对应的空格数
set softtabstop=4 " 按退格键时可以一次删掉 4 个空格
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set expandtab     " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround    " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'



"==========================================
" FileEncode Settings 文件编码,格式
"==========================================
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim。
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" 如遇Unicode值大于255的文本，不必等到空格再折行。
" set formatoptions+=m
" 合并两行中文时，不在中间加空格：
" set formatoptions+=B








"==========================================
" others 其它设置
"==========================================
" autocmd! bufwritepost _vimrc source % " vimrc文件修改之后自动加载。 windows。
" autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。





" 自动补全配置

" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"回车即选中当前项
" inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"



" if this not work ,make sure .viminfo is writable for you
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif




"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l





"==========================================
" FileType Settings  文件类型设置
"==========================================

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai







"设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" highlight CursorLine cterm=underline ctermbg=NONE ctermfg=green guibg=darkred guifg=white
highlight CursorColumn cterm=NONE ctermbg=gray ctermfg=blue guibg=darkred guifg=white








" 禁止光标闪烁
" set gcr=a:block-blinkon0


















