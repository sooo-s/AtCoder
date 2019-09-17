#!/bin/zsh

source .venv/bin/activate
npx acc login
npx acc session
oj login https://atcoder.jp
oj login --check
npx acc check-oj
