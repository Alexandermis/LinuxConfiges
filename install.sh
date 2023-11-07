#!/bin/bash
sed -i 's/\r$//' install.sh
current_folder=$(pwd)
if [ -e /etc/os-release ]; then
    # Get the OS name from the file
    os_name=$(cat /etc/os-release | grep -oP '(?<=PRETTY_NAME=")([^"]+)')
    
    # Print the OS name
    echo "Operating System: $os_name"
else
    echo "Unable to determine the operating system name."
fi


# oh my gosh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#gdb gef
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
sudo apt update
sudo apt install -y tmux vim zsh git bat

cp .vimrc ~/.vimrc
source ~/.vimrc
echo ".vimrc copied"

cp .tmux.conf ~/.tmux.conf
source ~/.tmux.conf
echo ".vimrc copied"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Maybe this is a little bit buggy
mkdir -p /home/mrx/Repos
# Clone the first repository
REPO_URL1="https://github.com/marlonrichert/zsh-autocomplete.git"
TARGET_DIR1="~/Repos/"
git clone "$REPO_URL1" "$TARGET_DIR1"


REPO_URL2="https://github.com/zsh-users/zsh-syntax-highlighting.git"
TARGET_DIR2="~/Repos/"
git clone "$REPO_URL2" "$TARGET_DIR2"
echo "ZSH Syntax Hightling done"

cp .zshrc ~/.zshrc
source ~/.zshrc
echo ".zshrc copied"

#Set zsh as default
chsh -s $(which zsh)
