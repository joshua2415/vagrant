echo 'start zsh'
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"agnoster\"/g' ~/.zshrc
sed -i 's/plugins=(git)/plugin=(\\n\tgit\\n\\tboundler\\n\\tdotenv\\n\\trake\\n\\trbenv\\n\\truby\\n\\tpython\\n)/g' ~/.zshrc
echo 'end zsh'