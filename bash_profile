#!/bin.bash
source $HOME/.bash/paths
source $HOME/.bash/config
source $HOME/.bash/aliases
source $HOME/.bash/aliases_projects
source $HOME/.bash/completions
source $HOME/.bash/functions
source $HOME/.bash/funcoeszz

# Definindo pairs
hitch() {
  command hitch "$@"
    if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'
# Uncomment to persist pair info between terminal instances
hitch
