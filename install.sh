here=`pwd`
echo 'Deletando arquivos antigos'
rm -Rf $HOME/.bash_profile
rm -Rf $HOME/.bashrc
rm -Rf $HOME/.inputrc
rm -Rf $HOME/.irbrc
rm -Rf $HOME/.gemrc
rm -Rf $HOME/.rspec
rm -Rf $HOME/.gitconfig
rm -Rf $HOME/.gitignore
rm -Rf $HOME/.vimrc
rm -Rf $HOME/.bash
#rm -Rf $HOME/.ssh/config
echo '=========='
echo 'Adicionando novos arquivos'
clear
echo 'Adicionando novos arquivos'
ln -s $here/bash_profile $HOME/.bash_profile
ln -s $here/bash_profile $HOME/.bashrc
ln -s $here/inputrc $HOME/.inputrc
ln -s $here/gemrc $HOME/.gemrc
ln -s $here/rspec $HOME/.rspec
ln -s $here/irbrc $HOME/.irbrc
#ln -s $here/gitconfig $HOME/.gitconfig
ln -s $here/gitignore $HOME/.gitignore
ln -s $here/dotvim $HOME/.vim
ln -s $here/vimrc $HOME/.vimrc
ln -s $here/bash $HOME/.bash
ln -s $here/sshconfig $HOME/.ssh/config
#ln -s $here/bash_completion /etc/bash_completion
echo 'Atualizando Terminal'
source $HOME/.bash_profile
echo 'Finalizando'
