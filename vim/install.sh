# Install vundle

echo "› checking Vundle install"

if ! [ -d ~/.vim/bundle/Vundle.vim ]
then
  echo "  Installing Vundle for you."
  mkdir -p ~/.vim/autoload ~/.vim/bundle
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

  # probably shouldn't run this
  # vim +PluginInstall +qall
fi
