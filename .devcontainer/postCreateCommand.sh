#!/bin/bash
set -e

# Create virtual environment in .venv
uv venv --allow-existing .venv

# Activate virtual environment and upgrade pip
# source .venv/bin/activate
# uv pip install --upgrade pip
# 

mkdir -p ~/.config/nix
printf 'experimental-features = nix-command flakes\n' >> ~/.config/nix/nix.conf

( cd flake-maxima && nix profile add .#maxima )
