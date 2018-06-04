vim-buffer: A buffer operate plugin for vim
===============================================

安装
------------
    
如果你使用[Vundle][1]插件管理器, 将 `Plugin 'chxuan/vim-buffer'` 加到 `~/.vimrc` 然后执行 `:PluginInstall`。


使用
------------

请将以下配置加到 `~/.vimrc`，如果不喜欢以下映射，可根据个人喜好更改。

    nnoremap <c-p> :PreviousBuffer<cr>
    nnoremap <c-n> :NextBuffer<cr>
    nnoremap <leader>d :CloseCurrentBuffer<cr>
    nnoremap <leader>D :BufOnly<cr>


特性
------------

该插件支持以下特性:

- 切换到上一个buffer
- 切换到下一个buffer
- 删除当前buffer
- 删除当前buffer外的所有buffer


License
------------

This software is licensed under the [MIT license][2]. © 2018 chxuan

  [1]: https://github.com/VundleVim/Vundle.vim
  [2]: https://github.com/chxuan/vim-buffer/blob/master/LICENSE
