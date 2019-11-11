#!/usr/bin/env bash

file=$(fzf); emacs ${file} & disown

