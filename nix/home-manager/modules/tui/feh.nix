{
  config,
  lib,
  pkgs,
  ...
}: # 这些参数由构建系统自动输入，你先别管

{
  programs.feh = {
    enable = true;
    keybindings = {
      prev_img = [
        "k"
        "Left"
      ];
      next_img = [
        "j"
        "Right"
      ];
      #zoom_in = "plus";
      #zoom_out = "minus";
    };
    themes = {
      booth = [
        "--full-screen"
        "--hide-pointer"
        "--slideshow-delay"
        "20"
      ];
      example = [
        "--info"
        "foo bar"
      ];
      feh = [
        "--image-bg"
        "black"
      ];
      imagemap = [
        "-rVq"
        "--thumb-width"
        "40"
        "--thumb-height"
        "30"
        "--index-info"
        "%n\\n%wx%h"
      ];
      present = [
        "--full-screen"
        "--sort"
        "name"
        "--hide-pointer"
      ];
      webcam = [
        "--multiwindow"
        "--reload"
        "20"
      ];
      ## custom
      normal = [
        "-F"
        "-Z"
        "-d"
      ];
      thumbnails = [
        "--thumbnails"
        "-F"
        "-Z"
        "--ignore-aspect"
        "--thumb-height"
        "256"
        "--thumb-width"
        "256"
        #"--limit-width"
        #"1280"
        #"--limit-height"
        #"960"
      ];
      montage = [
        "--montage"
        "-F"
        "-Z"
        "--ignore-aspect"
        "--alpha"
        "180"
      ];
    };
  };

  programs.nushell.shellAliases = {
    fehn = "feh -T normal";
    feht = "feh -T thumbnails";
    fehm = "feh -T montage";
  };

}
