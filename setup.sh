ln -s $HOME/dotfiles/.emacs.d $HOME/.emacs.d
ln -s $HOME/dotfiles/zsh/.zshenv $HOME/.zshenv
ln -s $HOME/dotfiles/zsh/.zshrc $HOME/.zshrc

case ${OSTYPE} in
  darwin*)
    ln -s $HOME/dotfiles/fdclone/fd2rc_Darwin $HOME/.fd2rc
  linux*)
    ln -s $HOME/dotfiles/fdclone/fd2rc_Linux $HOME/.fd2rc
esac

# commands to /usr/local/bin
cp $HOME/dotfiles/commands/* /usr/local/bin

# TODO 
## homebrew
## zsh
## oh-my-zsh
## peco
