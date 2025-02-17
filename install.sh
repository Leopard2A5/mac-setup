#!/usr/bin/env sh

if ! which brew > /dev/null 2>&1; then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if ! which rustup > /dev/null 2>&1; then
    echo "installing rustup..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

brew install --cask --no-quarantine middleclick
brew install --cask font-fira-code-nerd-font
brew install --cask visual-studio-code
brew install --cask flycut
brew install --cask alt-tab
brew install --cask karabiner-elements
brew install --cask iterm2

brew install \
    starship \
    fzf \
    bat \
    eza \
    fd \
    ripgrep \
    jq \
    yq \
    bacon

git config --global user.name "René Perschon"
git config --global user.email "rperschon85@gmail.com"
git config --global core.editor nano

echo "Downloading .zshrc"
curl 'https://raw.githubusercontent.com/Leopard2A5/mac-setup/refs/heads/main/.zshrc' > $HOME/.zshrc

echo "Downloading vscode settings"
curl 'https://raw.githubusercontent.com/Leopard2A5/mac-setup/refs/heads/main/settings.json' > $HOME/Library/"Application Support"/Code/User/settings.json

echo "Downloading vscode keybinds"
curl 'https://raw.githubusercontent.com/Leopard2A5/mac-setup/refs/heads/main/keybindings.json' > $HOME/Library/"Application Support"/Code/User/keybindings.json
