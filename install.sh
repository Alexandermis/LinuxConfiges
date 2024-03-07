#!/bin/bash
sed -i 's/\r$//' install.sh
current_folder=$(pwd)
if [ -e /etc/os-release ]; then
    os_name=$(cat /etc/os-release | grep -oP '(?<=PRETTY_NAME=")([^"]+)')
    echo "Operating System: $os_name"
fi
#update and install
sudo apt update
sudo apt install -y tmux vim zsh git bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
#install lsd
snap install lsd
# for virtualbox
# sudo apt install build-essential dkms linux-headers-$(uname -r)
# oh my gosh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# gdb gef
# bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
#fix bat
#vimrc
cp .vimrc ~/.vimrc
source ~/.vimrc
echo ".vimrc copied"
#tmux
cp .tmux.conf ~/.tmux.conf
source ~/.tmux.conf
echo ".vimrc copied"
# zsh autosuggetstions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh autocomplete
mkdir ~/Repos
# Clone the first repository
REPO_URL1="https://github.com/marlonrichert/zsh-autocomplete.git"
TARGET_DIR1="~/Repos"
sudo git clone "$REPO_URL1" "$TARGET_DIR1"
# zsh syntax highlighting
REPO_URL2="https://github.com/zsh-users/zsh-syntax-highlighting.git"
TARGET_DIR1="~/Repos"
git clone "$REPO_URL2" "$TARGET_DIR2"
echo "ZSH Syntax Hightling done"
#zshrc config
cp .zshrc ~/.zshrc
git clone "https://github.com/z-shell/zsh-lsd.git" "~/.oh-my-zsh/custom/plugins"
source ~/.zshrc
echo ".zshrc copied"
#Set zsh as default
chsh -s $(which zsh)
