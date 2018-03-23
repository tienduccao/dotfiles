cp ~/.vimrc ~/.vimrc_backup
cp .vimrc ~/.vimrc

if [ ! -d "~/.vim/bundle/vim-maximizer" ]; then
    cd ~/.vim/bundle
    echo "Downloading vim-maximizer"
    git clone https://github.com/szw/vim-maximizer.git
fi
