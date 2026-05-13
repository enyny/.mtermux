#!/data/data/com.termux/files/usr/bin/bash 

echo \"better charge the phone / Start\" 

termux-setup-storage && termux-wake-lock && pkg update -y && pkg i -y git && mkdir -p $HOME/bin $HOME/git $HOME/.termux && cd git && git clone --depth 1 https://github.com/enymy/mytermuxsetup.git && ln -sf $HOME/git/mytermuxsetup/my-termux-url-opener $HOME/bin/termux-url-opener && ln -sf $HOME/git/mytermuxsetup/my-termux-url-opener $HOME/bin/termux-file-editor
&& pkg install -y tur-repo git hub python fish android-tools wget htop speedtest-go aria2 lsd rust php rclone termux-api ffmpeg fzf ripgrep uv ncdu deno atomicparsley openssh ani-cli termux-am vim python-cryptography openjdk-25 golang msedit && curl -Lo $HOME/.termux/font.ttf https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/FiraCodeNerdFont-Retina.ttf && chmod +x $HOME/bin/* 2>/dev/null && export CARGO_BUILD_TARGET=aarch64-linux-android && export ANDROID_API_LEVEL=24 && pip install --pre yt-dlp gallery-dl pip-autoremove zombie-imp thefuck pywidevine pyplayready && pip cache purge && dos2unix $HOME/bin/* && chsh -s fish && fish -c "curl -sL https://git.io | source; fisher install jorgebucaran/fisher IlanCosman/tide@v6; tide configure --auto --style=Lean --prompt_colors='True color' --show_time='24-hour format' --lean_prompt_height='Two lines' --prompt_connection=Dotted --prompt_connection_andor_frame_color=Lightest --prompt_spacing=Sparse --icons='Many icons' --transient=Yes; fish_add_path $HOME/bin/ ; "

echo \"done\" 

echo exit ;
