" ===== other ===== {{{
inoremap jk <ESC>

" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk

" Jump the middle postion
" inoremap zz <c-o>zz

" First you need add 'stty -ixon' to .bashrc to forbid <c-s> suspend stty
nnoremap <c-s> :w<CR>
inoremap <c-s> <esc>:w<cr>a

" First you need add 'stty -ixon' to .bashrc to forbid <c-q> regain stty
nnoremap <c-q> :q<CR>
inoremap <c-q> <esc>:q<cr>

" 切换buffer
nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>

" 编辑,重载.vimrc
"nnoremap <silent> <leader>ev :vsplit $MYVIMRC<CR>
"nnoremap <silent> <leader>sv :source $MYVIMRC<CR>

" 将当前光标下的词变为大写
" inoremap <m-u> <esc>viwUea
" nnoremap <m-u> viwUe

" Format changelist Jump
nnoremap <silent> g; g;zz
nnoremap <silent> g, g,zz

" Switch CWD to the directory of the open buffer:
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" 没有写权限时使用w!!
cnoremap w!! w !sudo tee % > /dev/null

" 进入块选择模式的快捷键
xnoremap v <C-V>
"}}}

" ===== operator-pending mapping pairs ===== {{{
" ( = i(
onoremap ( i(
onoremap { i{
onoremap [ i[
onoremap < i<
onoremap " i"
onoremap ' i'
onoremap ` i`

" 下一个括号的内容
" onoremap in( :<c-u>normal! f(vi(<cr>
" onoremap in{ :<c-u>normal! f{vi{<cr>
" onoremap in[ :<c-u>normal! f[vi(<cr>
" onoremap in< :<c-u>normal! f<vi<<cr>
" onoremap in" :<c-u>normal! f"vi"<cr>
" onoremap in' :<c-u>normal! f'vi'<cr>
" onoremap in` :<c-u>normal! f`vi`<cr>
"}}}

" ===== 插入模式下移动 ===== {{{
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-f> <right>
inoremap <c-b> <left>
" inoremap <c-k> <up>
" inoremap <c-j> <down>
inoremap <m-f> <c-o>w
inoremap <m-b> <c-o>b
"}}}

" ===== 插入模式下删除 ===== {{{
inoremap <c-h> <bs>
inoremap <c-d> <del>
inoremap <c-u> <c-o>d0
" inoremap <c-k> <c-o>C
inoremap <c-w> <esc>bdwi
"}}}

" ===== 命令模式下移动 ===== {{{
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-f> <right>
cnoremap <c-b> <left>
" cnoremap <c-j> <down>
" cnoremap <c-k> <up>
"}}}

" ===== 使用用系统剪切板 ===== {{{
if isdirectory('/mnt/c/Windows')
    " Copy (write) highlighted text to .vimbuffer
    " vnoremap <silent> <leader>y y:new ~/.vim/.tmp/.clipbuffer<CR>VGp:x<CR> \| :!cat ~/.vim/.tmp/.clipbuffer \| clip.exe <CR><CR>
    " vnoremap <silent> <leader>y y:new /tmp/.clipbuffer<CR>VGp:x<CR> \| :!cat /tmp/.clipbuffer \| clip.exe <CR><CR>
    vnoremap <silent> <leader>y :<c-u>call yank#WslYank()<cr>
    " Paste from buffer
    "noremap <silent> <leader>p :r ~/.vim/.clipbuffer<CR>
else
    nnoremap <leader>y "+y
    nnoremap <leader>p "+p
    vnoremap <leader>y "+y
    vnoremap <leader>p "+p
endif
"}}}
