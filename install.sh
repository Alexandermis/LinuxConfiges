#!/bin/bash
sed -i 's/\r$//' install.sh
current_folder=$(pwd)
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt update
sudo apt install -y tmux vim zsh git bat

cp .vimrc ~/.vimrc
source ~/.vimrc
echo ".vimrc copied"

cp .tmux.conf ~/.tmux.conf
source ~/.tmux.conf
echo ".vimrc copied"

mkdir ~/Repos/
REPO_URL1="https://github.com/marlonrichert/zsh-autocomplete.git"
TARGET_DIR1="$~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh"

REPO_URL2="https://github.com/zsh-users/zsh-syntax-highlighting.git"
TARGET_DIR2="$~/Repos/zsh-syntax-highlighting"

REPO_URL3="https://github.com/zsh-users/zsh-syntax-highlighting.git"
TARGET_DIR3="$~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"

git clone "$REPO_URL1" "$TARGET_DIR1"
git clone "$REPO_URL2" "$TARGET_DIR2"
git clone "$REPO_URL3" "$TARGET_DIR3"

cp .zshrc ~/.zshrc
source ~/.zshrc
echo ".zshrc copied"

#Set zsh as default
chsh -s $(which zsh)
