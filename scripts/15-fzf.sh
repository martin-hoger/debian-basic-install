#!/usr/bin/env bash
echo "FZF https://github.com/junegunn/fzf"
echo
FINAL_DIR=~/.fzf

if [[ ! -d "$FINAL_DIR" ]]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git $FINAL_DIR
    sudo $FINAL_DIR/install --no-update-rc --bin --64
    # Symlink
    cd /usr/bin
    sudo ln -sf $FINAL_DIR/bin/fzf
fi

