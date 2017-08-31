sudo true
cd
sudo apt-get install -y zsh
sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir .fonts
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
cp /home/${USER}/custom_env/.zshrc /home/${USER}/.
chsh -s /bin/zsh
