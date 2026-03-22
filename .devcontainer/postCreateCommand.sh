#!/bin/bash
set -e

mkdir -p ~/.config/nix
printf 'experimental-features = nix-command flakes\n' >> ~/.config/nix/nix.conf

( cd flake-maxima && nix profile add .#maxima )
