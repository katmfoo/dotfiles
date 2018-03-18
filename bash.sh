# bash_setup.sh, sets up my bash environment
# author: Patrick Richeal
# last modified: 3/16/2018
# source: https://github.com/pricheal/dotfiles

# ==================================================
# shell
# ==================================================

# remove old .bash_profile
rm ~/.bash_profile

# copy new .bash_profile
mv .bash_profile ~/.bash_profile

# install base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# ==================================================
# vim
# ==================================================

# remove old vim files
rm ~/.vimrc
rm -rf ~/.vim

# copy new .vimrc
mv .vimrc ~/.vimrc

# install base16-vim
git clone https://github.com/chriskempson/base16-vim.git ~/.vim/colors/base16/
cp ~/.vim/colors/base16/colors/*.vim ~/.vim/colors/
rm -rf ~/.vim/colors/base16/

# install vim-airline and themes
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/pack/dist/start/vim-airline-themes

# install vim-fugitive
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/pack/dist/start/vim-fugitive

# ==================================================
# self destruct
# ==================================================

cd ..
rm -rf dotfiles

echo "Setup complete"