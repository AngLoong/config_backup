##<!--2026-02-12-->

{ config, lib, pkgs, nixgl, ... }:

{
  targets.genericLinux.nixGL.packages = import <nixgl> { inherit pkgs; };
  targets.genericLinux.nixGL = {
    #packages = nixgl.packages;
    defaultWrapper = "mesa";
    offloadWrapper = "nvidiaPrime";
    installScripts = [ "mesa" "nvidiaPrime" ];
  };

}
