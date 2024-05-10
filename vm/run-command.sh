#!/usr/bin/bash

set -eou pipefail

cd "$(dirname "$0")"

case "${2:-}" in
  "--recreate")
    vagrant halt
    vagrant destroy --force
    ;;
esac

vagrant plugin install virtualbox_WSL2 

vagrant up

vagrant rsync

vagrant ssh -c "$1"