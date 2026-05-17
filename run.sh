#!/data/data/com.termux/files/usr/bin/bash

# Initial Setup & Permissions
termux-setup-storage
termux-wake-lock

# Repos & Core Updates
pkg update -y
pkg install -y tur-repo git hub python fish android-tools wget htop speedtest-go \
    aria2 lsd rust php rclone termux-api ffmpeg fzf ripgrep uv ncdu \
    deno atomicparsley openssh ani-cli termux-am vim python-cryptography \
    openjdk-25 golang msedit dos2unix walk python-psutil termux-services

# Directory Structure
mkdir -p "$HOME/bin" "$HOME/.termux"

# Clone & Link Dotfiles
git clone --depth 1 https://github.com/enyny/.mtermux.git

ln -sf "$HOME/.mtermux/termux-url-opener" "$HOME/bin/termux-url-opener"
ln -sf "$HOME/.mtermux/termux-url-opener" "$HOME/bin/termux-file-editor"

# Fonts & Exports
curl -Lo "$HOME/.termux/font.ttf" \
    https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/FiraCode/Retina/FiraCodeNerdFont-Retina.ttf

export CARGO_BUILD_TARGET=aarch64-linux-android
export ANDROID_API_LEVEL=24

# Python Packages
pip install --pre "yt-dlp[default,curl-cffi]" gallery-dl pip-autoremove zombie-imp thefuck pywidevine pyplayready
pip cache purge

# Permissions & Cleanup
chmod +x $HOME/bin/* 
dos2unix $HOME/bin/* 

termux-wake-unlock

chsh -s fish

# Fish
fish -c "
    fish_add_path $HOME/bin/;
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher;
    fisher install IlanCosman/tide@v6; 
"