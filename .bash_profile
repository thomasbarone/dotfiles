alias vim='mvim -v'
alias ctags='`brew --prefix`/bin/ctags'
alias junit='java org.junit.runner.JUnitCore'

HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

export PS1="\u: ../\W $ "
#export PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u.\h: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"
