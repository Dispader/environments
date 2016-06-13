#!/bin/bash

##
##  Here There Be Tygers
##

#  "Aside set the little bits of history repeating."  —Alex Gifford
#
export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=
export HISTFILESIZE=

#  "The problem with the world is that everyone is a few drinks behind."  —Humphrey Bogart
#
export HOMEBREW_GITHUB_API_TOKEN=YOUR_HOMEBREW_GITHUB_API_TOKEN

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
export EDITOR='emacs'
ev() {
  emacs "$1" --eval '(setq buffer-read-only t)'
}

#  "उत्तिष्ठ जाग्रत प्राप्य वरान्निबोधत | क्षुरस्य धारा निशिता दुरत्यया दुर्गं पथस्तत्कवयो वदन्ति"  —कठ उपनिषद्
#
#export PATH=${PATH}:~/Development/bin:~/Development/University/bin
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:${PATH}"
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}

#  "Complete abstinence is easier than perfect moderation."  —Augustine of Hippo
#
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

#  "Because your kiss in on my list of one of the best things in life."  —Hall and Oats
#
alias ls='ls --color=always'

#  "Nobility, without virtue, is a fine setting without a gem."  —Jane Porter
#
export PATH=${HOME}/.rbenv/bin:${PATH}
eval "$(rbenv init -)"

#  "Some cause happiness wherever they go; others whenever they go."  —Oscar Wilde
#
export GOPATH=${HOME}/.go && export PATH=${PATH}:${GOPATH}/bin

#  "The less effort, the faster and more powerful you will be."  —Bruce Lee
#
export LESS="--no-init --quit-if-one-screen --LONG-PROMPT"

#  "I have measured out my life with coffee spoons."  —T.S. Eliot
#
#export JAVA_OPTS="-Djava.awt.headless=true"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

#  "He is armed without who is innocent within, be this thy screen, and this thy wall of brass."  Horace


#  "You can't be happy by making something groovy."  —Bob Dylan
#
export SDKMAN_DIR="/Users/jake/.sdkman"
[[ -s "/Users/jake/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jake/.sdkman/bin/sdkman-init.sh"

#  "Mister, will you please help my pony?"  —Ween
#
export SPLUNK_HOME=~/Development/opt/splunk
export PATH=${PATH}:${SPLUNK_HOME}/bin

#  "Børk, Børk, Børk!"  —The Sweedish Chef
#
alias chef-environment='eval "$(chef shell-init bash)"'
