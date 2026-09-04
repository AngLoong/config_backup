# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters

##<!--git-->
alias ggf = git fetch 
alias ggh = git push 
alias ggl = git pull 
alias ggc = git commit 
alias ggs = git status 
alias ggd = git diff 
alias gga = git add * 
alias ggo = git log 

##<!--lazygit-->
#alias lg = lazygit

##<!--nvim-->
alias nv = nvim 

##<!--nvim-->
alias fzfm = fzf -m

##<!--feh-->
#alias fehn = feh -T normal
#alias feht = feh -T thumbnails
#alias fehm = feh -T montage

# Replace ls with eza
alias l = eza -al --color=always --group-directories-first --icons # preferred listing
#alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
#alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt = eza -aT --color=always --group-directories-first --icons  # tree listing
#alias l.= eza -a | grep -e '^\.'                                      # show only dotfiles

#export TMP_C =aliase_end
