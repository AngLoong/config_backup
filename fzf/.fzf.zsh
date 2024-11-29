# Setup fzf
# ---------
if [[ ! "$PATH" == */home/angloong/workspaces/tmp/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/angloong/workspaces/tmp/fzf/bin"
fi

source <(fzf --zsh)
