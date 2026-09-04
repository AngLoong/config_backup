-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart https://wiki.archlinux.org/title/XDG_Autostart

hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    --#: hl.exec_cmd("noctalia")
    --####custome#### 
    hl.exec_cmd("waybar")
    hl.exec_cmd("fcitx5")
    hl.exec_cmd("mako")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("bash /home/angloong/.config/home-manager/dotfiles/hyprland/hypr/scripts/wallpaper_sw.sh")
    hl.exec_cmd("wl-paste --watch cliphist store")
    --####===####
    hl.exec_cmd("xhost +SI:localuser:root")
end)
