Because I forget every time...

1. `brew install neovim`
2. `git clone git@github.com:riceo/vimrc.git`
3. `ln -s ~/src/vimrc ~/.vim/`
4. `mkdir -p ~/.config/nvim/`
5. `vim $_/init.vim`

Add:

```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vim/vimrc
```

6. Open vim, ignore errors
7. :PlugInstall
8. Restart -- all done

