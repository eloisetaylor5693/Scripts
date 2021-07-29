#!/usr/bin/env bash

if grep -q "pyenv" ~/.zshrc; then 
    echo "Already initialised pyenv";
else
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
    source ~/.zshrc
    echo "initialised pyenv";
fi