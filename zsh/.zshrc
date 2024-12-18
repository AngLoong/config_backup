# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

#<!--oh-my-zsh-->
#source ~/.zshrc_oh_my_zsh
# Path to your oh-my-zsh installation.

#<!--prezto-->
source ~/.zprezto/runcoms/zshrc

#<!--nix-->
#if [ -e /home/angloong/.nix-profile/etc/profile.d/nix.sh ]; then . /home/angloong/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

#<!--fzf-->
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#<!--user-->
## lvim path
export PATH="/home/angloong/.local/bin/:$PATH"



