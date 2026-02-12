{ config, pkgs, ... }:
{
  imports = [
    ./neovim.nix
    ./helix.nix
  ];
}
