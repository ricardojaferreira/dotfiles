#!/usr/bin/env bash

DOTFILES=$HOME/.dotfiles

echo -e "\\nCreating symlinks"
echo "=============================="
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename "$file" '.symlink' )"
    if [ -e "$target" ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $file"
        ln -s "$file" "$target"
    fi
done

echo -e "\\n\\ninstalling to ~/.config"
echo "=============================="
if [ ! -d "$HOME/.config" ]; then
    echo "Creating ~/.config"
    mkdir -p "$HOME/.config"
fi

config_files=$( find "$DOTFILES/config" -d 1 2>/dev/null )
for config in $config_files; do
    target="$HOME/.config/$( basename "$config" )"
    if [ -e "$target" ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $config"
        ln -s "$config" "$target"
    fi
done

# install base16
if [ -d "$HOME/.config/base16-shell" ]; then
    echo "base16-shell already installed... Skipping"
else
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

while :
do
    echo "Choose shell base16 theme: "
    echo "1 - Twilight"
    echo "2 - Dracula"
    read base16Theme

    case $base16Theme in
        1)
	    theme="base16-twilight.sh"
    	    echo "Applying $theme..."
            ln -sf "$HOME/.config/base16-shell/scripts/$theme" "$HOME/.base16_theme"
	    break
	    ;;
        2)
            theme="base16-dracula.sh"
    	    echo "Applying $theme..."
            ln -sf "$HOME/.config/base16-shell/scripts/$theme" "$HOME/.base16_theme"
	    break
	    ;;
        *)
            echo "Invalid option"
	    ;;
    esac
done

# install powerline fonts
if [ -d "$HOME/.config/fonts" ]; then
    echo "Powerline fonts already installed... Skipping"
else
    git clone https://github.com/powerline/fonts.git ~/.config/fonts --depth=1
fi

source ~/.config/fonts/install.sh

# create vim symlinks
# As I have moved off of vim as my full time editor in favor of neovim,
# I feel it doesn't make sense to leave my vimrc intact in the dotfiles repo
# as it is not really being actively maintained. However, I would still
# like to configure vim, so lets symlink ~/.vimrc and ~/.vim over to their
# neovim equivalent.

echo -e "\\n\\nCreating vim symlinks"
echo "=============================="
VIMFILES=( "$HOME/.vim:$DOTFILES/config/nvim"
        "$HOME/.vimrc:$DOTFILES/config/nvim/init.vim" )

for file in "${VIMFILES[@]}"; do
    KEY=${file%%:*}
    VALUE=${file#*:}
    if [ -e "${KEY}" ]; then
        echo "${KEY} already exists... skipping."
    else
        echo "Creating symlink for $KEY"
        ln -s "${VALUE}" "${KEY}"
    fi
done

# Install PowerLine
# echo "\\n\\nAdding powerline"
# pip install --user powerline-status

