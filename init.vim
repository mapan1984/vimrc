" 取得本文件所在的目录
let g:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'source '.g:home.'/'.'<args>'

LoadScript vimrc

let g:python3_host_prog = 'C:\Program Files\Python36\python.exe'

" We can check first if the following commands are available, 
" but the last one is just a var anyway
if exists('g:Gui')
    Guifont DejaVu Sans Mono:h15

    " Starts in fullscreen, Maximized should work too (untested)
    let g:GuiWindowFullScreen=1
endif
