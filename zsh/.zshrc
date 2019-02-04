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
  # generate the init script from plugins above
  zgen save
fi

# Extra settings
export KEYTIMEOUT=1
export EDITOR=nvim
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/go/bin
source $HOME/.zsh_aliases
alias vim="nvim"
bindkey -v
bindkey -M vicmd '/' history-incremental-search-backward
case $(tty) in /dev/tty[0-9]*)
	clear
	neofetch
esac
