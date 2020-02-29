#!/usr/bin/env bash

echo "Installing dotfiles."

source install/link.sh

# only perform macOS-specific install
if [ "$(uname)" == "Darwin" ]; then
    echo -e "\\n\\nRunning on macOS"

    source install/brew.sh

fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp

source install/ohmyzsh.sh

curl -s "https://get.sdkman.io" | bash

echo "Done. Reload your terminal."

