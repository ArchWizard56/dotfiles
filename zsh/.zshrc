# Install zgen if it doesn't already exist
if [ -f "$HOME/.zgen/zgen.zsh" ] 
then
	source "${HOME}/.zgen/zgen.zsh"
else
	git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
fi
# If zgen hasn't been initialized, initialize all plugins
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/sudo
  zgen load ArchWizard56/zsh-prompt
  zgen load zsh-users/zsh-autosuggestions
  zgen load zsh-users/zsh-syntax-highlighting
  # generate the init script from plugins above
  zgen save
fi


# Extra settings
export KEYTIMEOUT=1
export EDITOR=nvim
for (( i=1; i<=$LINES; i++ )); do echo; done; clear
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/go/bin
source $HOME/.zsh_aliases
alias vim="nvim"
bindkey -v
bindkey -M vicmd '/' history-incremental-search-backward
case $(tty) in /dev/tty[0-9]*)
	clear
    if `which lolcat >/dev/null 2>&1`; then
        neofetch | lolcat
    else
        neofetch
    fi
esac
bindkey '^ ' autosuggest-accept
ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=243"
eval "$(direnv hook zsh)"
