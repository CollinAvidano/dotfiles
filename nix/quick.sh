#!/bin/bash

echo "${2}" | sudo -S bash -c "cd ${1} && nix-env -p /nix/var/nix/profiles/system --set ${1} && ./bin/switch-to-configuration switch" 
