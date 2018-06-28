vim-buffer: A buffer operate plugin for vim
===============================================

## 安装
    
- `vim-plug`

    Plug 'chxuan/vim-buffer'

- `Vundle`

    Plugin 'chxuan/vim-buffer'

## 使用

- `:PreviousBuffer`

    切换到上一个buffer

- `:NextBuffer`

    切换到下一个buffer

- `:CloseCurrentBuffer`
    
    关闭当前buffer

- `:BufOnly`

    删除当前buffer外的所有buffer

## 参考配置

请将以下配置加到 `~/.vimrc`，如果不喜欢以下映射，可根据个人喜好更改。

    nnoremap <c-p> :PreviousBuffer<cr>
    nnoremap <c-n> :NextBuffer<cr>
    nnoremap <leader>d :CloseCurrentBuffer<cr>
    nnoremap <leader>D :BufOnly<cr>

## License

This software is licensed under the [MIT license][1]. © 2018 chxuan

  [1]: https://github.com/chxuan/vim-buffer/blob/master/LICENSE
