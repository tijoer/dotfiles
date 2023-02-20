#!/bin/bash

echo "Setting some global Git commands for non enterprise work."
# Some basic Git config for non enterprise work
git config --global user.email "Tim@..."
git config --global user.name "tijoer"
git config --global pull.rebase false  # merge (the default strategy)

