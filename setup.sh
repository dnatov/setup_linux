#First things first. Good'ole update.
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade
sudo apt autoremove

#Assume no git
sudo apt install git

#Zsh
sudo apt install zsh

#Tmux
sudo apt install tmux

#Htop
sudo apt install htop

#Copy main config files
cp configs/.gitconfig ~/.gitconfig
cp configs/.bashrc ~/.bashrc
cp configs/.vimrc ~/.vimrc
cp configs/.zshrc ~/.zshrc
cp configs/.tmux.conf ~/.tmux.conf
