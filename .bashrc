#!/bin/bash

##
##  Here There Be Tygers
##

#  "Aside set the little bits of history repeating."  —Alex Gifford
#
export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=ignoreboth:erasedups

#  "Americans have different ways of saying things. They say 'elevator', we say 'lift'... they say 'President', we say 'stupid psychopathic git."  —Alexei Sayle
#
git config --global user.name "Jake Gage" && git config --global user.email "jake.gage@gmail.com"
git config --global core.pager "less -r"
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
    source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi
if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
    source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi
alias git-log="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=short; echo"
alias development-university="git config --global user.email 'jake@umn.edu'"

#  "Hide in your shell, 'cause the world is out to bleed you for a ride."  —Roger Hodgson
#
#  ${BEAT} is undefined, so we can pretend to read this.
#
if [ "$USER" != "root" ]; then
    export PS1='\[\033[1;37m\](\w)\[\033[0m\]${BEAT}\[\033[4m\]$(__git_ps1 " %s ")\[\033[0m\]${BEAT}\[\033[36m\]{\h}\[\033[0m\]${BEAT}\[\033[7m\]\D{%I:%M%P}\[\033[0m\]${BEAT}] ';
fi
if [ "$USER" == "root" ]; then
    export PS1="\[\033[1;37m\](\w)\[\033[0m\]${BEAT}\[\033[36m\]{\h}\[\033[0m\]${BEAT}\[\033[7m\]\D{%I:%M%P}\[\033[0m\]${BEAT}# ";
fi
alias mega-prompt=PS1="\n\[\033[0;37m\]\342\224\214\342\224\200\$(if [[ \$? == 0 ]]; then echo \"[\[\033[0;32m\]\[\033[01;32m\]\342\234\223\[\033[0;37m\]]\342\224\200\"; else echo \"[\[\033[0;32m\]\[\033[01;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\"; fi)[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

#  "In this world a man must either be anvil or hammer."  —Henry Wadsworth Longfellow
#
#  "Get me the hammer."  —Jake
#
export EDITOR="emacs -nw";
alias emacs="emacs -nw";
ev() {
  emacs "$1" --eval '(setq buffer-read-only t)'
}

#  "उत्तिष्ठ जाग्रत प्राप्य वरान्निबोधत | क्षुरस्य धारा निशिता दुरत्यया दुर्गं पथस्तत्कवयो वदन्ति"  —कठ उपनिषद्
#
#export PATH=${PATH}:~/Development/bin:~/Development/University/bin
export PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}

#  "Because your kiss in on my list of one of the best things in life."  —Hall and Oats
#
alias ls='ls --color=always'

#  "Nobility, without virtue, is a fine setting without a gem."  —Jane Porter
#
export PATH=${HOME}/.rbenv/bin:${PATH}
eval "$(rbenv init -)"

#  "The less effort, the faster and more powerful you will be."  —Bruce Lee
#
export LESS="--no-init --quit-if-one-screen --LONG-PROMPT"

#  "I have measured out my life with coffee spoons."  —T.S. Eliot                                 
#                                                                                                 
#export JAVA_OPTS="-Djava.awt.headless=true"

#  "You can't be happy by making something groovy."  —Bob Dylan
#
export SDKMAN_DIR="/Users/jake/.sdkman"
[[ -s "/Users/jake/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jake/.sdkman/bin/sdkman-init.sh"
