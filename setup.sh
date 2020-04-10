#!/bin/sh

pacman -S zsh firefox lightdm lightdm-gtk-greeter wget xorg xf86-video-nouveau

systemctl enable lightdm

useradd -m -G wheel -s /bin/zsh nicola

passwd nicola

su - nicola

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -sic

yay -S oh-my-zsh-git vim

mkdir .config/i3

wget -P .config/i3 https://raw.githubusercontent.com/Trisert/dotfiles/master/.config/i3/config

mkdir st

cd st

wget https://raw.githubusercontent.com/Trisert/st/master/PKGBUILD

makepkg -sic

cd ..

cd dmenu

wget https://raw.githubusercontent.com/Trisert/dmenu/master/PKGBUILD

makepkg -sic

cd .. 

wget https://raw.githubusercontent.com/Trisert/dotfiles/master/.zshrc

wget https://raw.githubusercontent.com/Trisert/dotfiles/master/.vimrc

wget https://raw.githubusercontent.com/Trisert/dotfiles/master/.xinitrc

rm -rf ArchSetup
