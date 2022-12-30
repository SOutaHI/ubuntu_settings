export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="fino"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sota/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sota/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sota/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sota/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda deactivate

source /opt/ros/noetic/setup.bash

########### GIT ALIAS ###########
alias st="git status"
alias ad="git add ."
alias gco="git commit"
alias gp="git push"
alias pull="git pull"

########### ROS ALIAS ###########
alias cs='catkin source'
alias ckb='catkin build'
source `catkin locate --shell-verbs`



alias sd="sudo shutdown -h now"
. "$HOME/.cargo/env"
