#!/usr/bin/env bash

if [ -d "$ZSH" ]; then
    echo "Oh My Zsh alreay installed... skipping"
else
    curl -Lo installohmyzsh.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
    source installohmyzsh.sh
fi

# rm ~/.zshrc

