
##
##  Here There Be Tygers
##


#  Less is more.  Make less not suck.
#
[[ "$TERM" == xterm* ]] && {
    alias less='TERM=vt100 less'
}
export LESS="--long-prompt --quit-if-one-screen"


#  Make less more friendly for non-text input files, see lesspipe(1).
#
#  ed: Jake has no idea what this does.  At all.
#
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

#  Hide in your shell, 'cause the world is out to take you for a
# ride...
#
#  Psst... ${BEAT} is undefined, so we can pretend* to read this.
#
if [ "$USER" != "root" ]; then
    export PS1="\[\033[1;37m\](\w)\[\033[0m\]${BEAT}\[\033[36m\]{\h}\[\033[0m\]${BEAT}\[\033[7m\]\D{%I:%M%P}\[\033[0m\]${BEAT}] ";
fi
if [ "$USER" == "root" ]; then
    export PS1="\[\033[1;37m\](\w)\[\033[0m\]${BEAT}\[\033[36m\]{\h}\[\033[0m\]${BEAT}\[\033[7m\]\D{%I:%M%P}\[\033[0m\]${BEAT}# ";
fi

#  Title in deed.
#
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

#  A rose, by any other name, will kick your ass.
#
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi


# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export PATH

#  Get me the hammer.
#
export EDITOR="emacs -nw";
alias emacs="emacs -nw";
ev() {
  emacs "$1" --eval '(setq buffer-read-only t)'
}

#  "The beauty of independence, departure, actions that rely on themselves."
#
export JAVA_HOME=/usr/lib/jvm/java-6-sun
#export PATH=${JAVA_HOME}/bin:${PATH}
alias eclipse="export GDK_NATIVE_WINDOWS=true; ~/Opt/webdev/eclipse/eclipse &";

#  "It is said that the path to salvation is narrow, and as difficult to walk 
# as a razor's edge."
#
#export PATH=${PATH}:~/Bin/:~/Opt/android/android-sdk-linux_x86-1.6_r1/tools:/home/jake/Opt/ant/apache-ant-1.7.1/bin;

#  CtotheVtotheS
#
alias cvs-webteam="export CVSROOT=:ext:@cvs.webteam.umn.edu:/opt/UMN-src; export CVS_RSH=ssh;";
alias cvs-architecture="export CVSROOT=:ext:@cvs.webteam.umn.edu:/opt/ARCH-src; export CVS_RSH=ssh;";
alias cvs-dispader="export CVSROOT=/var/cvs;";

#  "...ist Sehr, Sehr guuuuud."
#
#export JRUBY_HOME=~/Development/JRuby/jruby-1.6.0
#export PATH=${PATH}:${JRUBY_HOME}/bin

#  "Tyler sold his soap to department stores at $20 a bar."
#
#export SOAPUI_HOME=~/Opt/soapui/soapui-3.0.1
#export PATH=${PATH}:${SOAPUI_HOME}/bin;

#  "Carve a tunnel of hope through the dark mountain of disappointment."  -- Martin Luther King, Jr.
#
#  "Mad Dogs and Englishmen go out in the midday sun."  --  Noël Coward
#
alias md00='ssh -t ale.oit.umn.edu "ssh md00.oit.umn.edu"'
alias md01='ssh -t ale.oit.umn.edu "ssh md00.oit.umn.edu"'
alias md02='ssh -t ale.oit.umn.edu "ssh md00.oit.umn.edu"'

# Always a fan of Tommy D, myself.
#
#alias ack='ack-grep'
