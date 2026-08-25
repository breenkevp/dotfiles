#!/usr/bin/env bash

set -e

echo "🚀 KevinOS Dotfiles Bootstrap Starting..."

# Detect distro
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
else
    DISTRO="unknown"
fi

echo "📦 Detected distro: $DISTRO"

# Install packages depending on distro
install_packages() {
    case "$DISTRO" in
        fedora)
            sudo dnf install -y zsh git starship zsh-autosuggestions zsh-syntax-highlighting
            ;;
        ubuntu|debian)
            sudo apt update
            sudo apt install -y zsh git starship zsh-autosuggestions zsh-syntax-highlighting
            ;;
        *)
            echo "⚠️ Unknown distro. Please install zsh, git, starship manually."
            ;;
    esac
}

echo "📥 Installing required packages..."
install_packages

# Ensure ~/.config/zsh exists
echo "📁 Creating ~/.config/zsh directory..."
mkdir -p ~/.config/zsh

# Symlink .zshrc
echo "🔗 Linking .zshrc..."
rm -f ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

# Symlink aliases
echo "🔗 Linking aliases.zsh..."
rm -f ~/.config/zsh/aliases.zsh
ln -s ~/dotfiles/config/zsh/aliases.zsh ~/.config/zsh/aliases.zsh

# Install Starship config if present
if [ -f ~/dotfiles/starship.toml ]; then
    echo "🔗 Linking starship.toml..."
    rm -f ~/.config/starship.toml
    ln -s ~/dotfiles/starship.toml ~/.config/starship.toml
fi

# Change shell to zsh if not already
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "🐚 Changing default shell to zsh..."
    chsh -s "$(which zsh)"
fi

echo "✨ Bootstrap complete! Reloading shell..."
exec zsh
