#!/usr/bin/env bash
#
# Run all dotfiles installers.

# Stolen from holman's dotfiles on github

set -e

cd "$(dirname $0)"/..

# find the installers and run them iteratively
find . -name install.sh | while read installer ; do sh -c "${installer}" ; done
