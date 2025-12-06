#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DOTFILES"

PACKAGES=(
    alacritty
    git
    npm
    nvim
    sway
    waybar
    zsh
)

echo "Installing dotfiles.."

for pkg in "${PACKAGES[@]}"; do
    echo "Stowing $pkg"
    stow -D "$pkg" || true
    stow "$pkg"
done

echo "Dotfiles installed successfully!"

