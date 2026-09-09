# dotfiles 

Dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

```text
nvim/.config/nvim/...   ->  ~/.config/nvim
tmux/.tmux.conf         ->  ~/.tmux.conf
```

## New machine

```sh
# 1. Clone the repo into ~/dotfiles
git clone https://github.com/LaughingPenguin/development-setup.git ~/dotfiles

# 2. Run the setup script 
cd ~/dotfiles
./setup.sh
```

## Tmux persistence

- Manual save: `Ctrl-Space` then `Ctrl-s`.
- Manual restore: `Ctrl-Space` then `Ctrl-r`.
