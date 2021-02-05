#!/usr/bin/env bash 

# options
BRANCH="master"
REPO="https://github.com/awaelchli/ansible.git"
VAULT_KEY_FILE="$HOME/.vault-key"
PRECMD="sudo systemd-inhibit --who='ansible-pull' --why='provisioning'"

# install ansible if necessary
apt install -y ansible git

# run ansible-pull command
if [ $# -eq 0 ]
    then
        $PRECMD sudo ansible-pull --clean --vault-password-file=$VAULT_KEY_FILE -U $REPO -C $BRANCH 2>&1
    else
        $PRECMD sudo ansible-pull --clean --vault-password-file=$VAULT_KEY_FILE -U $REPO -C $BRANCH --tags $1 2>&1
fi
