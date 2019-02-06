#!/bin/bash

eval $(ssh-agent -s)

ssh-add <(echo "$SSH_PRIVATE_KEY")

[[ -f /.dockerenv ]] && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config

bash