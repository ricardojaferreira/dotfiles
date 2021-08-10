#!/usr/bin/env bash

echo "Installing dotfiles."

# only perform macOS-specific install
if [ "$(uname)" == "Darwin" ]; then
    echo -e "\\n\\nRunning on macOS"
    xcode-select --install
    source install/brew.sh
fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp

source install/ohmyzsh.sh

curl -s "https://get.sdkman.io" | bash

source install/link.sh

echo "Done. Reload your terminal."

