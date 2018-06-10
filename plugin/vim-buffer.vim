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
command! -nargs=0 CloseBuffer :call <sid>close_buffer()
command! -nargs=0 BufOnly :call <sid>buf_only()

" 切换到上一个buffer
function! s:previous_buffer()
    execute ":bp"
endfunction

" 切换到下一个buffer
function! s:next_buffer()
    execute ":bn"
endfunction

" 关闭buffer
function! s:close_buffer()
    let win_count = <sid>get_window_count()
    if win_count > 1
        call <sid>close_current_window()
    else
        call <sid>close_current_buffer()
    endif
endfunction

" 关闭其余buffer
function! s:buf_only()
    let curr = <sid>get_current_buffer_number()
    let last = <sid>get_last_buffer_number()
    let n = 1

    while n <= last
        if n != curr && <sid>is_exist_buffer(n)
            call <sid>go_to_buffer(n)
            call <sid>close_buffer_by_number(n)
        endif
        let n += 1
    endwhile
endfunction

" 获得窗口总数
function! s:get_window_count()
    return winnr('$')
endfunction

" 获得当前buffer编号
function! s:get_current_buffer_number()
    return bufnr("%")
endfunction

" 获得最后一个buffer编号
function! s:get_last_buffer_number()
    return bufnr("$")
endfunction

" 判断是否存在buffer
function! s:is_exist_buffer(num)
    return buflisted(a:num)
endfunction

" 关闭当前窗口
function! s:close_current_window()
    execute ":close"
endfunction

" 关闭当前buffer
function! s:close_current_buffer()
    execute ":bd"
endfunction

" 关闭buffer
function! s:close_buffer_by_number(num)
    silent execute ":bd " . a:num
endfunction

" 切换到buffer
function! s:go_to_buffer(num)
    silent execute ":bn " . a:num
endfunction

