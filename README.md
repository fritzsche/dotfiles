# My Vim Dotfiles

This repo contains my vim setup.

Clone the repository:
```
git clone https://github.com/fritzsche/dotfiles.git
```

Link the files to the homedirectory:
```
ln -s dotfiles/vimrc ~/.vimrc
ln -s dotfiles/tmux.conf ~/.tmux.conf
```

## Vim Setup in vimrc

Base configuration for vim.

Initially you need to install [vundle](https://github.com/VundleVim/Vundle.vim) by cloning the repository:
````
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
````

In vim run

```
:PluginInstall
```

[YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Plugin need to compile with this command. Install first the Python dev. environment and cmake.

Debian:
```
apt-get install python-dev cmake
```

and use Homebrew on the Mac.

```
cd ~/.vim/bundle/YouCompleteMe
./install.py
```

Compiling on the Raspberry Pi might freeze do to limited memory, because cmake is building on all cores in parallel. To avoid the freeze simply only on one CPU code:

```
YCM_CORES=1 ./install.py
```

Install ctags. On Mac:
```
brew install ctags
```

## Tmux Setup in tmux.conf

Base configuration for tmux. This is changing the `PREFIX` from `CTRL-B` to `CTRL-A`. This is in particular usefull as I have mapped the `CAPS LOCK` to `CTRL` so I can issue the `PREFIX` just from the homerow of the keyboard.

## Some keyboard shortcuts

The leader key is mapped to `SPACE`.

### General Tools

Key       | Description
----------|---------------
`LEADER-n` | toggle Nerdtree.
`CTRL-p`   | select files with CTRL-p tool

###Move the cursor

 Key       | Description
----------|---------------
`h`       | left
`j`       | down
`k`       | up
`l`       | right
`0`       | begin of line
`$`       | end of line
`CTRL-u`  | half screen up
`CTRL-f`  | half screen down
`G`       | end of file
`1G` / `gg` | begin of file
`m`\<x\>     | mark line current cursor position
`'`\<x\>     | Jump to begin of line marked with x
`\``\<x\>   | Jump to mark x

### Copy and Past

  Key       | Description
 ----------|---------------
 `v`       | start visual mode
 `CTRL-v`  | start visual block mode
 `y`       | copy (yank) the selection
 `d`       | cut (delete) the selection
 `p`       | past after cursor
 `P`       | past before cursor

### Git and Fugitive
You can run git commands using `:Git` using the special symbol `%` for the current file.

Key       | fugitive | Description
----------|---------------
`:Git add %`| :Gwrite | stage file
`:Git checkout %`| :Gread | checkout last version
`:Git rm %` | :Gremove | delete file
`:Git mv %` | :Gmove |rename file

