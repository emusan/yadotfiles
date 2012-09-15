#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


# Add CodeSourcery/Sourcery_CodeBench_Lite_for_ARM_EABI/bin to PATH
#PATH=$PATH:~/CodeSourcery/Sourcery_CodeBench_Lite_for_ARM_EABI/bin
#export PATH

DEVKITPRO=/home/tom/devkitPro
export DEVKITPRO

DEVKITARM=${DEVKITPRO}/devkitARM
export DEVKITARM

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
