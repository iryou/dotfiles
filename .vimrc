"---------------------------------------------------------------------------
" プラグイン
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif
" 使用するプロトコルを変更する
let g:neobundle#types#git#default_protocol = 'https'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
call neobundle#end()

"---------------------------------------------------------------------------
" 基本設定

" Tabのスペース数
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 行数表示
set number

" ルーラーを表示
set ruler

" 編集中のファイル名を表示
set title		

" 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする
set smartindent
set autoindent

" カーソルの回り込みができるように
set whichwrap=b,s,h,l,<,>,[,]

" バックスペースを空白、行末、行頭でも使えるようにする
set backspace=indent,eol,start

" クリップボードをWindowsと連携
set clipboard=unnamed

" カーソル行をハイライト
set cursorline

" 起動時のメッセージを消す
set shortmess+=I

" タブとか改行を表示する
set list

" タブとか改行を示す文字列 eol(改行)は背景色違いのスペースにする。
set listchars=tab:»»,eol:↲,extends:»,precedes:«,nbsp:%

" 単語を途中で折らない
set linebreak

" コードの色分け
syntax on

" 折り返さない
set nowrap

"---------------------------------------------------------------------------
" 検索

" 検索を循環させない
set nowrapscan
" インクリメンタルサーチを行う
set incsearch
" 大文字と小文字を区別しない
set noignorecase
 " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する 
set smartcase
" 検索結果をハイライト表示
set hlsearch
" Esc Esc でハイライトOFF
nnoremap <Esc><Esc> :noh<Return>

"---------------------------------------------------------------------------
" バックアップ

" バックアップ取らない
set nobackup
" スワップファイルを作成しない
set noswapfile

"---------------------------------------------------------------------------
" ウインドウに関する設定:
" 色
colorscheme hybrid

"---------------------------------------------------------------------------
" マウス
set mouse=a
set ttymouse=xterm2

"---------------------------------------------------------------------------
" ショートカット

" Shift+方向ボタンでビジュアルモードへ
nnoremap  <S-Up>      v<Up>
nnoremap  <S-Down>    v<Down>
nnoremap  <S-Left>    v<Left>
nnoremap  <S-Right>   v<Right>
" ビジュアルモード中はSHIFT+方向キーはカーソル移動する
vnoremap  <S-Up>      <Up>
vnoremap  <S-Down>    <Down>
vnoremap  <S-Left>    <Left>
vnoremap  <S-Right>   <Right>

if has('win32unix')
let &t_ti.="\e[1 q"	" 端末をtermcapモードにする
let &t_SI.="\e[5 q"	" 挿入モード開始(バー型のカーソル)
let &t_EI.="\e[1 q"	" 挿入モード終了(ブロック型のカーソル)
let &t_te.="\e[0 q"	" termcapモードから抜ける
endif

" prefix keyの設定
nmap <Space> [unite]
" スペースキーとaキーでカレントディレクトリを表示
nnoremap <silent> [unite]a :<C-u>Unite<Space>file<CR>
" スペースキーとfキーでバッファと最近開いたファイル一覧を表示
nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer file_mru<CR>
" スペースキーとdキーで最近開いたディレクトリを表示
nnoremap <silent> [unite]d :<C-u>Unite<Space>directory_mru<CR>
" スペースキーとbキーでバッファを表示
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
"スペースキーとtキーでタブを表示
nnoremap <silent> [unite]t :<C-u>Unite<Space>tab<CR>

