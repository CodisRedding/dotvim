Installation:

    git clone git://github.com/nelstrom/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Fonts:

    https://github.com/Lokaltog/powerline-fonts/tree/master/SourceCodePro
    I use the Light version at 15pt

Update:

    git submodule add git@github.com:bling/vim-airline.git bundle/airline
    git submodule update

Theme:

    mango:

	   git clone https://github.com/goatslacker/mango.vim && make
	   the makefile uses sed and an -i option which bombs on mac, so
	   just close it to another dir and cp the mango.vim file to ~/.vim/colors