git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo apt install python-pip
pip install 'python-language-server[all]'

sudo apt-get install zsh
sudo usermod -s /usr/bin/zsh $(whoami)
sudo apt-get install powerline fonts-powerline zsh-theme-powerlevel9k zsh-syntax-highlighting
echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
