" ==============================================================
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/vim-buffer
" Create Date: 2018-06-04
" License: MIT
" ==============================================================

if exists("g:vim_buffer_loaded")
    finish
endif

let g:vim_buffer_loaded = 1

command! -nargs=0 PreviousBuffer :call <sid>previous_buffer()
command! -nargs=0 NextBuffer :call <sid>next_buffer()
command! -nargs=0 CloseCurrentBuffer :call <sid>close_current_buffer()
command! -nargs=0 BufOnly :call <sid>buf_only()

" 切换到上一个buffer
function! s:previous_buffer()
    silent execute ":bp"
endfunction

" 切换到下一个buffer
function! s:next_buffer()
    silent execute ":bn"
endfunction

" 关闭当前buffer
function! s:close_current_buffer()
    silent execute ":bd"
endfunction

" 关闭其余buffer
function! s:buf_only()
    let curr = bufnr("%")
    let last = bufnr("$")
    let n = 1

    while n <= last
        if n != curr && buflisted(n)
            silent execute ":bn " . n
            silent execute ":bd " . n
        endif
        let n += 1
    endwhile
endfunction
