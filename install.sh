#!/bin/bash
current_folder=$(pwd)
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt update
sudo apt install -y tmux vim zsh git bat
#save current folder
current_folder=$(pwd)

cd current_folder
cp .vimrc ~/.vimrc
source ~/.vimrc
echo ".vimrc copied"

cp .tmux.conf ~/.tmux.conf
source ~/.tmux.conf
echo ".vimrc copied"

REPO_URL1="https://github.com/marlonrichert/zsh-autocomplete.git"
TARGET_DIR1="$HOME/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh"

REPO_URL2="https://github.com/zsh-users/zsh-syntax-highlighting.git"
TARGET_DIR2="$HOME/Repos/zsh-syntax-highlighting"


REPO_URL3="https://github.com/zsh-users/zsh-syntax-highlighting.git"
DEST_DIR3="$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"

# Clone the first repository
if [ -d "$TARGET_DIR1" ]; then
	git clone "$REPO_URL1" $"TARGET_DIR1"
    echo "Plugin 1 done"
else
    echo "Plugin 1 done"
fi

if [ -d "$TARGET_DIR2" ]; then
	git clone "$REPO_URL2" $"TARGET_DIR2"
    echo "Plugin 2 done"
else
    echo "Plugin 2 done"
fi

if [ -d "$TARGET_DIR3" ]; then
	git clone "$REPO_URL3" $"TARGET_DIR3"
    echo "Plugin 3 done"
else
    echo "Plugin 3 done"
fi

cp .zshrc ~/.zshrc
source ~/.zshrc
echo ".zshrc copied"

#Set zsh as default
chsh -s $(which zsh)
