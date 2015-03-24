
" ####表示設定####
set title		" 編集中のファイル名を表示
syntax on		" コードの色分け
set tabstop=4	" タブ幅をスペース４つ分にする
set smartindent	" オートインデント
set number		" 行数を表示

" ####基本的な設定####
set autoindent	" 新しい行のインデントを現在行と同じにする

" バックアップ取らない
set nobackup

" 空白文字の可視化
set list

" 空白文字の可視化の設定
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" カーソルの回り込みができるように
set whichwrap=b,s,h,l,<,>,[,]

" バックスペースを空白、行末、行頭でも使えるようにする
set backspace=indent,eol,start

" クリップボードをWindowsと連携
set clipboard=unnamed

" コメントの色を変える
hi Comment ctermfg=2

" カーソル行をハイライト
set cursorline
" アンダーラインを引く(color terminal)
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
" アンダーラインを引く(gui)
highlight CursorLine gui=underline guifg=NONE guibg=NONE

" インクリメンタルサーチを行う
set incsearch
" 大文字と小文字を区別しない
set noignorecase
 " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する 
set smartcase

" 検索結果をハイライト表示
set hlsearch
" Esc Esc でハイライトOFF
" nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return>

" 挿入モード時、日本語入力をOFFで始める。
"set iminsert=0
"set imsearch=0

" マウス
set mouse=a
set ttymouse=xterm2

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
