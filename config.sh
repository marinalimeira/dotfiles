# install plug - a minimalist Vim plugin manager.
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# forces creation of a link
ln -f config/nvim/init.vim ~/.config/nvim/init.vim
ln -f config/zsh/themes/sabella.zsh-theme ~/.oh-my-zsh/custom/themes/sabella.zsh-theme
