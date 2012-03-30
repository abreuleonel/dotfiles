#!/bin.bash
source $HOME/.bash/paths
source $HOME/.bash/config
source $HOME/.bash/aliases
source $HOME/.bash/aliases_projects
source $HOME/.bash/completions
source $HOME/.bash/functions
source $HOME/.bash/funcoeszz

# Set pairs with hitch
gem list hitch | grep -i "hitch" &>/dev/null
if [ $? -eq 0 ]; then
  hitch() {
    command hitch "$@"
      if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
  }
  alias unhitch='hitch -u'
    # Uncomment to persist pair info between terminal instances
  hitch
fi

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
