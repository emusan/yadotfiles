# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' prompt 'Now you fucked up %e times'
zstyle :compinstall filename '/home/tom/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=750
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# Pretty!
alias ls="ls --color=auto"

# Faster clear :D
alias c=clear

# Get some prompty-stuffs
autoload -U promptinit
promptinit

# Add colors!
autoload -U colors && colors

# SUPAHPROMPT, one of the few things in these configs made entirely by me(well okay, the idea's 
# that make it up are from different people I guess XD)!
PROMPT="%{$fg[blue]%}%n%{$fg[magenta]%}@%{$fg[blue]%}%m %{$fg[green]%}%2~ %{$reset_color%}%# "
RPROMPT="[%{$fg[blue]%}%?%{$reset_color%}],[%{$fg[blue]%}%T%{$reset_color%}]"

# Bindkeys to get stuff working better :)
bindkey "\e[H" beginning-of-line #HOME
bindkey "\e[F" end-of-line #END
bindkey "\e[2~" quoted-insert #INS
bindkey "\e[3~" delete-char #DEL
bindkey "\e[5~" beginning-of-history #PAGEUP
bindkey "\e[6~" end-of-history #PAGEDOWN
bindkey "\e[Z" reverse-menu-complete #SHIFT+TAB
bindkey "\e[7~" beginning-of-line #HOME(rxvt)
bindkey "\e[8~" end-of-line #END(rxvt)

# A few exports
# Add CodeSourcery/Sourcery_CodeBench_Lite_for_ARM_EABI/bin to PATH
PATH=$PATH:~/CodeSourcery/Sourcery_CodeBench_Lite_for_ARM_EABI/bin:~/.gem/ruby/1.9.1/bin
export PATH

GOPATH=$GOPATH:~/progs/go
export GOPATH

DEVKITPRO=/home/tom/devkitPro
export DEVKITPRO

DEVKITARM=${DEVKITPRO}/devkitARM
export DEVKITARM

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# exports to get my locale correct, didn't need them before... lol
export LANG=en_US.UTF-8
export LC_ALL=$LANG
