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

#  "Gotta gotta git up to git down."  —Coolio
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
    export PS1='\[\033[1;37m\](\w)\[\033[0m\]${BEAT}\[\033[4m\]$(__git_ps1 " %s ")\[\033[0m\]${BEAT}\[\033[36m\]{\h}\[\033[0m\]${BEAT}\[\033[7m\]$(date +%I:%M%P)\[\033[0m\]${BEAT}] ';
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

#  "The soul becomes dyed with the color of its thoughts."  —Marcus Aurelius
#
#  export LS_COLORS=`ruby -rlscolors -e 'print LsColors::Colors'`
#
export LS_COLORS="rs=0:di=01;38;5;33:ln=38;5;45:mh=38;5;15;48;5;5:pi=38;5;11;48;5;1:so=38;5;13:do=38;5;5:bd=38;5;11;48;5;232:cd=38;5;3;48;5;232:or=38;5;45;48;5;9:mi=05;38;5;15;48;5;232:su=38;5;15;48;5;196:sg=38;5;16;48;5;11:ca=38;5;226;48;5;196:tw=38;5;16;48;5;10:ow=38;5;21;48;5;10:st=38;5;15;48;5;21:ex=01;38;5;35:*.bat=38;5;35:*.exe=38;5;35:*.pl=38;5;35:*.py=38;5;35:*.sh=38;5;35:*.swf=38;5;35:*.gem=38;5;197:*.gemspec=38;5;197:*.rb=38;5;197:*.rbw=38;5;197:*.rdoc=38;5;197:*.bmp=38;5;111:*.gif=38;5;111:*.jpeg=38;5;111:*.jpg=38;5;111:*.png=38;5;111:*.tiff=38;5;111:*.xcf=38;5;111:*.avi=38;5;171:*.flv=38;5;171:*.mkv=38;5;171:*.mov=38;5;171:*.mp4=38;5;171:*.mpeg=38;5;171:*.ogm=38;5;171:*.wmv=38;5;171:*.ape=38;5;168:*.flac=38;5;168:*.mid=38;5;168:*.midi=38;5;168:*.mp2=38;5;168:*.mp3=38;5;168:*.ogg=38;5;168:*.wav=38;5;168:*.wma=38;5;168:*.3ds=38;5;202:*.bin=38;5;202:*.dat=38;5;202:*.gb=38;5;202:*.gba=38;5;202:*.grp=38;5;202:*.iso=38;5;202:*.nds=38;5;202:*.pak=38;5;202:*.7z=38;5;215:*.bz2=38;5;215:*.gz=38;5;215:*.rar=38;5;215:*.tar=38;5;215:*.tgz=38;5;215:*.zip=38;5;215:*.djvu=38;5;247:*.doc=38;5;247:*.docx=38;5;247:*.odt=38;5;247:*.pdf=38;5;247:*.txt=38;5;247:*.bak=38;5;241:*.log=38;5;241:*.old=38;5;241:"

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
export LESS="--no-init --quit-if-one-screen --LONG-PROMPT --RAW-CONTROL-CHARS"

#  "I have measured out my life with coffee spoons."  —T.S. Eliot
#
#export JAVA_OPTS="-Djava.awt.headless=true"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

#  "He is armed without who is innocent within, be this thy screen, and this thy wall of brass."  —Horace
#
title() { printf $'\ek%s\e\\' "$1"; }

#  "You can't be happy by making something groovy."  —Bob Dylan
#
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"

#  "One morning I shot an elephant in my pajamas. How he got into my pajamas I'll never know."  —Groucho Marx
#
[[ -s "/Users/jake/.gradle/gradle-completion.bash" ]] && source "/Users/jake/.gradle/gradle-completion.bash"

#  "Mister, will you please help my pony?"  —Ween
#
export SPLUNK_HOME=~/Development/opt/splunk
export PATH=${PATH}:${SPLUNK_HOME}/bin

#  "Børk, Børk, Børk!"  —The Sweedish Chef
#
alias chef-environment='eval "$(chef shell-init bash)" && alias git=/usr/local/bin/git'
