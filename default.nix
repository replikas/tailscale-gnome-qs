{ pkgs ? import <nixpkgs> { } }:
pkgs.callPackage ./tailscale-qs.nix { }
