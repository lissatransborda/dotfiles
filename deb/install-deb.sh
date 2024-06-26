#!/bin/sh

sudo apt update -y

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

#Installing programs using APT
sudo apt install -y ffmpeg ack aptitude audacity autoconf automake bat breeze build-essential chromium-codecs-ffmpeg-extra cmatrix code composer compton curl dreamchess dunst feh flameshot fonts-firacode frei0r-plugins g++ gcc gimp git gparted guake htop libcairo2-dev libffi-dev libjpeg-dev libncurses-dev libonig-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libtool libxslt-dev libyaml-dev libzip-dev lxappearance lxsession make neofetch neovim nodejs pavucontrol pavucontrol php polybar postgresql postgresql-contrib ranger re2c ruby sl snapd sqlite3 ssh suckless-tools supertux supertux  sxiv tmux traceroute unixodbc-dev vim w3m xclip xorg xsettingsd zathura zlib1g-dev zsh zsh

# Installing LunarVim

bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

#Installing gems
gem install colorls betterfile colorize runcs gcli generategem solargraph

#Installing OBS Studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update && sudo apt-get install -y obs-studio

#Installing programs using NPM
sudo npm install prettier markpdf @prettier/plugin-php intelephense eslint eslint-plugin-vue -g

#Installing hstr
sudo add-apt-repository ppa:ultradvorka/ppa && sudo apt-get update && sudo apt-get install hstr && hstr --show-configuration >> ~/.zshrc && . ~/.zshrc

#Installing OhMyPosh
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin

#Apt upgrade
sudo apt upgrade -y ; sudo apt dist-upgrade -y

#Removing DEBS
rm -rf ~/Downloads/*

#Installing Oh My ZSH
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
