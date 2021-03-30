#! /bin/bash

echo "Installing required packages"
sudo apt-get install -y git zsh curl fzf

echo "Switching default shell to zsh, please enter user password:"
chsh -s /bin/bash

mkdir "$HOME/.zsh"

echo "Enabling fzf key bindings"
git clone https://github.com/junegunn/fzf.git /tmp/fzf
cp /tmp/fzf/shell/completion.zsh "$HOME/.zsh/fzf-completion.zsh"
cp /tmp/fzf/shell/key-bindings.zsh "$HOME/.zsh/fzf-key-bindings.zsh"

echo "Installing syntax highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh/zsh-syntax-highlighting"

echo "Installing starship.rs"
curl -fsSL https://starship.rs/install.sh | bash

echo "Copying config files"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cp "$DIR/.zshrc" "$HOME/.zshrc"
cp "$DIR/starship.toml" "$HOME/.zsh/starship.toml"

