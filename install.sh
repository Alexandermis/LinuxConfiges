#!/bin/bash
sed -i 's/\r$//' install.sh
current_folder=$(pwd)
if [ -e /etc/os-release ]; then
    os_name=$(cat /etc/os-release | grep -oP '(?<=PRETTY_NAME=")([^"]+)')
    echo "Operating System: $os_name"
fi
# update and install
sudo apt update
sudo apt upgrade -y
# for virtualbox
#sudo apt install build-essential dkms linux-headers-$(uname -r) -y
# and Guest Additions
# set vram to 256
sudo apt install -y tmux vim zsh git bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
# install lsd
snap install lsd
# oh my gosh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# gdb gef
# bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
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
cd ~/Repos
# Clone the first repository
sudo git clone https://github.com/marlonrichert/zsh-autocomplete.git
# zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "ZSH Syntax highlighting done"
cd ~/LinuxConfiges
#zshrc config
cp .zshrc ~/.zshrc
git clone "https://github.com/z-shell/zsh-lsd.git" "~/.oh-my-zsh/custom/plugins"
#fix lsd
echo alias ls='lsd' >> ~/.zshrc
source ~/.zshrc
echo ".zshrc copied"
#Set zsh as default
sudo chsh -s $(which zsh) $USER
reboot now
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
# https://github.com/romkatv/powerlevel10k#is-it-really-fast
