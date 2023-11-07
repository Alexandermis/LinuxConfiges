#!/bin/bash
sed -i 's/\r$//' install.sh
current_folder=$(pwd)
if [ -e /etc/os-release ]; then
    os_name=$(cat /etc/os-release | grep -oP '(?<=PRETTY_NAME=")([^"]+)')
    echo "Operating System: $os_name"
fi
# oh my gosh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# gdb gef
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
#update and install
sudo apt update
sudo apt install -y tmux vim zsh git bat
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
mkdir -p /home/mrx/Repot
# Clone the first repository
REPO_URL1="https://github.com/marlonrichert/zsh-autocomplete.git"
TARGET_DIR1="/home/mrx/Repot"
git clone "$REPO_URL1" "$TARGET_DIR1"
# zsh syntax highlighting
REPO_URL2="https://github.com/zsh-users/zsh-syntax-highlighting.git"
TARGET_DIR2="/home/mrx/Repot"
git clone "$REPO_URL2" "$TARGET_DIR2"
echo "ZSH Syntax Hightling done"
#zshrc config
cp .zshrc ~/.zshrc
source ~/.zshrc
echo ".zshrc copied"
#Set zsh as default
chsh -s $(which zsh)
