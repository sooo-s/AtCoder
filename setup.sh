#!/bin/zsh

npm install
python3 -m venv .venv
source .venv/bin/activate
pip install online-judge-tools selenium
brew cask install chromedriver
