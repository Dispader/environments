##
##  Here There Be Tygers
##

#  "Aside set the little bits of history repeating."  —Alex Gifford
#
export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=ignoreboth:erasedups


#  "The less effort, the faster and more powerful you will be."  —Bruce Lee
#
LESS="--no-init --quit-if-one-screen --LONG-PROMPT"
alias ls='ls --color=always'
alias lh='ls --color=always -lasth | less -R'
#
#  Set up grep and ls to generate color by default (even when the output goes to pipes),
# so that we can color-page in less (and more).
#
export GREP_OPTIONS='--color=always'
export LESS=${LESS}" --RAW-CONTROL-CHARS"

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

#  A rose, by any other name, will kick your ass.
#
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

#  "Open your eyes: look within.  Are you satisfied with the life you're living?"  —Bob Marley
#
alias open="xdg-open";

#  "In this world a man must either be anvil or hammer."  —Henry Wadsworth Longfellow
#
#  "Get me the hammer."  —Jake
#
export EDITOR="emacs -nw";
alias emacs="emacs -nw";
ev() {
  emacs "$1" --eval '(setq buffer-read-only t)'
}

#  "Americans have different ways of saying things. They say 'elevator', we say 'lift'... they say 'President', we say 'stupid psychopathic git."  —Alexei Sayle
#
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi
alias git-log="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=short; echo"

#  "Said Tommy the Cat as he reeled back to clear whatever foreign matter may have nestled it's way into his mighty throat..."  —Tom Waits
#
alias ack="ack-grep"

#  "L'histoire est la version des événements passés sur laquelle les gens ont décidé de s'entendre."  —Napoléon Bonaparte
#
alias cvs-webteam="export CVSROOT=:ext:@cvs.webteam.umn.edu:/opt/UMN-src; export CVS_RSH=ssh;";
alias cvs-architecture="export CVSROOT=:ext:@cvs.webteam.umn.edu:/opt/ARCH-src; export CVS_RSH=ssh;";

#  "You can't be happy by making something groovy."  —Bob Dylan
#
[[ -s "/home/jake/.gvm/bin/gvm-init.sh" ]] && source "/home/jake/.gvm/bin/gvm-init.sh"

#  "उत्तिष्ठ जाग्रत प्राप्य वरान्निबोधत | क्षुरस्य धारा निशिता दुरत्यया दुर्गं पथस्तत्कवयो वदन्ति"  —कठ उपनिषद्
#
export PATH=${PATH}:~/Development/bin:~/Development/University/bin

#  "Nobility, without virtue, is a fine setting without a gem."  —Jane Porter
#
export PATH=${HOME}/.rbenv/bin:${PATH}
eval "$(rbenv init -)"

#  "New York is my Lourdes, where I go for spiritual refreshment... a place where you're least likely to be bitten by a wild goat."  —Brendan Behan
#
alias development=". ~/Development/bin/environment_development.sh";
alias development-university=". ~/Development/University/bin/environment_university.sh"
alias development-university-webapps=". ~/Development/University/webapps/bin/environment_university_webapps.sh"
alias development-university-webapps-esup=". ~/Development/University/webapps-esup/bin/environment_university_webapps_esup.sh"

# "Tell the emperor that my hall has fallen to the ground."  —the Delphic Pythia
#
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib:${LD_LIBRARY_PATH}
