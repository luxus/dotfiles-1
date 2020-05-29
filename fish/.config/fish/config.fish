mkdir -p ~/bin ~/npm/bin ~/.cargo/bin
set -gx PATH ~/bin ~/npm/bin ~/.cargo/bin $PATH

if test -d /home/linuxbrew
  set -gx PATH /home/linuxbrew/.linuxbrew/bin /home/linuxbrew/.linuxbrew/sbin $PATH
  set -gx MANPATH ~/.linuxbrew/share/man $MANPATH
  set -gx INFOPATH ~/.linuxbrew/share/info $INFOPATH
end

set -gx fish_greeting ""
set -gx LANG en_GB.UTF-8
set -gx BROWSER firefox
set -gx EDITOR nvim
set -gx VISUAL nvim

set -gx FZF_DEFAULT_COMMAND "rg --files --hidden --follow -g \"!.git/\" 2> /dev/null"
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

# Other git aliases are in git config
alias g="git"
alias gg="g a .; and g c -a"
alias lg="lazygit"

# Some software still uses vimdiff
alias vimdiff="nvim -d"

# Start an SSH agent if required, if not, connect to it.
initialise_ssh_agent

# Prevent funky output inside emacs terminals.
if test "$TERM" = "eterm-color"
  function fish_title; end
end

# Local config.
if [ -f ~/.local.fish ]
  source ~/.local.fish
end
