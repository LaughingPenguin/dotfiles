#!/usr/bin/env bash

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME"

cd "$REPO_DIR"

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is required. Install it first, then re-run ./setup.sh." >&2
  exit 1
fi

if ! command -v stow >/dev/null 2>&1; then
  echo "Installing GNU Stow..."
  brew install stow
fi

echo "Linking dotfiles with stow..."
stow --ignore='\.DS_Store' -t "$TARGET_DIR" nvim tmux

echo
echo "Done."
