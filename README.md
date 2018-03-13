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
ln -s dotfiles/ocamlinit ~/.ocamlinit
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

Download spell checker files:

```
:set spell
```

[YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Plugin need to compile with this command. Install first the Python dev. environment and cmake.

Debian:
```
sudo apt-get install python-dev cmake
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

On Ubuntu:
```
sudo apt-get install exuberant-ctags
```

Install the Go-Tools within vim:
```
:GoInstallBinaries
```

Update the Go-Tools within vim:
```
:GoUpdateBinaries
```

Install the OCaml Merlin documentation by running the following within vim
```
:execute "helptags " . substitute(system('opam config var share'),'\n$','','''') .  "/merlin/vim/doc"'')
```

## Tmux Setup in tmux.conf

Base configuration for tmux. This is changing the `PREFIX` from `CTRL-B` to `CTRL-A`. This is in particular usefull as I have mapped the `CAPS LOCK` to `CTRL` so I can issue the `PREFIX` just from the homerow of the keyboard.

## Some keyboard shortcuts

In this section I try to collect some of the keyboard mapping that vim provides. This is work-in-progress as vim has just so many of them.

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
`CTRL-d`  | half screen down
`CTRL-b`  | screen up
`CTRL-f`  | screen down
`CTRL-e`  | scroll 1 line down
`CTRL-y`  | scroll 1 line up
`G`       | end of file
`1G` / `gg` | begin of file
`m`\<x\>     | mark line current cursor position
`'`\<x\>     | Jump to begin of line marked with x
`\``\<x\>   | Jump to mark x
\<line\>`G` | Jump to line
`e` | next end of word
`w` | next begin of a word
`b` | last begin of a word

### General
Key       | Description
----------|---------------
`LEADER-l` | display invisible characters

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

Command       | fugitive | Description
----------|----------|----
`:Git add %`| `:Gwrite` | stage file
`:Git checkout %`| `:Gread` | checkout last version
`:Git rm %` | `:Gremove` | delete file
`:Git mv %` | `:Gmove` |rename file

The `:Gcommit`command will open a split window to add a commit message and `:Gpush` to get the latest changes from origin. Use `:Gblame` to get a blame window opened.

### Help

  Key       | Description
----------|---------------
`t`  | Jump to tag (special mapping for german keyboard)
`CTRL-t` | Jump back

### Buffer and Windows and Tabs

Open vim with files in vertical split windows use option `-O` or with a `-o` in a horizontal split. Use `-p` to open all buffers in tabs.

Key       | Description
----------|---------------
`:buffers` | show buffers ('a' = active / 'h' = hidden / ' ' = inactive) `:ls`
`CTRL-w s` | horizontal split the current window (`:split`)
`CTRL-w v` | vertical split of the current window (`:vsplit`)
`CTRL-w n` | new window with an empty file
`CTRL-w h` | move to the window to the left (similar for right/up/down)
`:q`       | close current buffer
`:tabe`    | new tab
`:tabn` or `gt` | next tab
`:tabp` or `gT` | prev. tab
`z`\<nr\>  | set windows to height nr


### Macros

Key       | Description
----------|---------------
`q`\<n\>  | record in register n
`q`       | stop recording (when pressed during macro recording)
`@`\<n\>  | play the macro

### GoLang

Key       | Description
----------|---------------
`LEADER-r` | Run
`LEADER-t` | Test
`LEADER-b` | Build
`LEADER-o` | Outline
`LEADER-c` | Check Coverage
`LEADER-a` | Close Quickfix
`CTRL-n`   | Next Fix
`CTRL-m`   | Previous

