#!/bin/env bash

# Outputs bash history to bash_history.txt
output_file="$HOME/bash_history.txt"

cat ~/.bash_history | awk '!x[$0]++' >> "$output_file"

