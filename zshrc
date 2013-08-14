ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sorin"

source $ZSH/oh-my-zsh.sh

if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
  PROMPT='%{$fg[cyan]%}%c$(git_prompt_info) %(!.%{$fg_bold[red]%}#.%{$fg_bold[green]%}$)%{$reset_color%} '
fi

# RVM
if [ -d "$HOME/.rvm/bin" ]; then
  PATH=$PATH:$HOME/.rvm/bin
fi

# MacPorts
if [ -d "/opt/local" ]; then
  export PATH=/opt/local/lib/postgresql92/bin::/opt/local/libexec/perl5.12/sitebin:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin$PATH
fi

# PostgreSQL
if [ -d "/var/pgsql_socket" ]; then
  export PGHOST=/var/pgsql_socket
fi

# Play framework
if [ -d "$HOME/Code/play-2.1.0" ]; then
  export PATH=$PATH:$HOME/Code/play-2.1.0
fi
