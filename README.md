My vimrc...

# Config

Create .vim
```
$ mkdir -p ~/.vim/{bundle,colors} 
$ cd ~/.vim
```

Download and create a symbolic link to vimrc
```
$ git clone https://github.com/rodrigoSchi0/vim.git
$ ln -s ~/.vim/vimrc ~/.vimrc
```

[Molokai Color Scheme](https://github.com/tomasr/molokai)

Download Vundle
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Launch `vim` and run `:PluginInstall`
