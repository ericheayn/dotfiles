#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DOTFILES"

PACKAGES=(
    zsh
)

echo "Installing dotfiles.."

for pkg in "${PACKAGES[@]}"; do
    stow -D -v "$pkg" || true
    stow -v "$pkg"
done

echo "Dotfiles installed successfully!"

