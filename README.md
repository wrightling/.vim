.VIM FILES
==========

Simple collection of VIM files and a script to install them.

This uses the [vim-pathogen](https://github.com/tpope/vim-pathogen) extension
to load all addons.

To take advantage of the .vimrc located in the .vim directory, be sure to:

    cd ~
    ln -s .vim/.vimrc .vimrc

Before installing all plugins listed in [vimbundles.sh](bin/vimbundles.sh),
be sure to edit the file and comment out any you don't intend to use.

To install all extensions:

    ~/.vim/bin/vimbundles.sh
