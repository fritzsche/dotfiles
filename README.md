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

## Tmux Setup in tmux.conf

Base configuration for tmux. This is changing the `PREFIX` from `CTRL-B` to `CTRL-A`. This is in particular usefull as I have mapped the `CAPS LOCK` to `CTRL` so I can issue the `PREFIX` just from the homerow of the keyboard.


