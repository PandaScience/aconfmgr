# =========== Base Packages ====================================================

# ----------- Bootstrap --------------------------------------------------------
AddPackage amd-ucode # Microcode update image for AMD CPUs
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage bash-completion # Programmable completion for the bash shell
AddPackage cronie # Daemon that runs specified programs at scheduled times and related tools
AddPackage kitty # A modern, hackable, featureful, OpenGL-based terminal emulator
AddPackage kitty-terminfo # Terminfo for kitty, an OpenGL-based terminal emulator
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage man-db # A utility for reading man pages
AddPackage man-pages # Linux man pages
AddPackage neofetch # A CLI system information tool written in BASH that supports displaying images.
AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs
AddPackage networkmanager # Network connection manager and user applications
AddPackage networkmanager-openvpn # NetworkManager VPN plugin for OpenVPN
AddPackage mlocate # Merging locate/updatedb implementation
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems
AddPackage parted # A program for creating, destroying, resizing, checking and copying partitions
AddPackage refind # An EFI boot manager
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
AddPackage vim # Vi Improved, a highly configurable, improved version of the vi text editor
AddPackage zfs-linux # Kernel modules for the Zettabyte File System.
AddPackage zfs-utils # Kernel module support files for the Zettabyte File System.
AddPackage zram-generator # Systemd unit generator for zram devices
AddPackage zsh # A very advanced and programmable command interpreter (shell) for UNIX

# ----------- Configuration ----------------------------------------------------
AddPackage --foreign yay # Yet another yogurt. Pacman wrapper and AUR helper written in go.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage yadm # Yet Another Dotfiles Manager
AddPackage flatpak # Linux application sandboxing and distribution framework (formerly xdg-app)

# ----------- CLI Tools --------------------------------------------------------
AddPackage bat # Cat clone with syntax highlighting and git integration
AddPackage broot # Fuzzy Search + tree + cd
AddPackage btop # A monitor of system resources, bpytop ported to C++
AddPackage dust # A more intuitive version of du in rust
AddPackage dysk # Get information on your mounted filesystems
AddPackage eza # A modern replacement for ls (community fork of exa)
AddPackage fd # Simple, fast and user-friendly alternative to find
AddPackage fzf # Command-line fuzzy finder
AddPackage git # the fast distributed version control system
AddPackage git-delta # Syntax-highlighting pager for git and diff output
AddPackage git-lfs # Git extension for versioning large files
AddPackage git-revise # A git subcommand to efficiently update, split, and rearrange commits
AddPackage meld # Compare files, directories and working copies
AddPackage --foreign mise-bin # The front-end to your dev env
AddPackage ripgrep # A search tool that combines the usability of ag with the raw speed of grep
AddPackage rsync # A fast and versatile file copying tool for remote and local files
AddPackage sd # Intuitive find & replace
AddPackage tealdeer # A fast tldr client in Rust
AddPackage unzip # For extracting and viewing files in .zip archives
AddPackage wget # Network utility to retrieve files from the Web
AddPackage z # Tracks your most used directories, based on 'frecency'

# ----------- Multimedia -------------------------------------------------------
AddPackage pipewire # Low-latency audio/video router and processor
AddPackage pipewire-alsa # Low-latency audio/video router and processor - ALSA configuration
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement
AddPackage wireplumber # Session / policy manager implementation for PipeWire
AddPackage pavucontrol # PulseAudio Volume Control

AddPackage blueman # GTK+ Bluetooth Manager
AddPackage bluez # Daemons for the bluetooth protocol stack
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack

AddPackage mpd # Flexible, powerful, server-side application for playing music
AddPackage ncmpcpp # Almost exact clone of ncmpc with some new features

# ----------- Fonts ------------------------------------------------------------
AddPackage otf-monaspace-nerd # Patched font Monaspace (Monaspice) from nerd fonts library
AddPackage ttf-dejavu-nerd # Patched font Dejavu Sans Mono from nerd fonts library
AddPackage noto-fonts # Google Noto TTF fonts
AddPackage noto-fonts-cjk # Google Noto CJK fonts
AddPackage noto-fonts-emoji # Google Noto emoji fonts
AddPackage noto-fonts-extra # Google Noto TTF fonts - additional variants
AddPackage ttf-arphic-ukai # CJK Unicode font Kaiti style
AddPackage wqy-zenhei # A Hei Ti Style (sans-serif) Chinese Outline Font.

# ----------- GUI Toolkits -----------------------------------------------------
AddPackage gtk3 # GObject-based multi-platform GUI toolkit
AddPackage arc-gtk-theme # A flat theme with transparent elements for GTK 2,3,4 and Gnome-Shell
AddPackage nwg-look # GTK3 settings editor adapted to work on wlroots-based compositors
AddPackage qt5-wayland # Provides APIs for Wayland
AddPackage qt6-wayland # Provides APIs for Wayland
AddPackage qt5ct # Qt5 Configuration Utility
AddPackage qt6ct # Qt 6 Configuration Utility

# ----------- WM ---------------------------------------------------------------
AddPackage greetd # Generic greeter daemon
AddPackage greetd-tuigreet # A console UI greeter for greetd
AddPackage hyprland # a highly customizable dynamic tiling Wayland compositor
AddPackage waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors

AddPackage xdg-desktop-portal-hyprland # xdg-desktop-portal backend for hyprland

AddPackage kanshi # Dynamic output configuration for Wayland WMs
AddPackage --foreign wdisplays # GUI display configurator for wlroots compositors
AddPackage --foreign wlr-randr # Utility to manage outputs of a Wayland compositor

AddPackage hypridle # hyprland’s idle daemon
AddPackage hyprlock # hyprland’s GPU-accelerated screen locking utility
AddPackage --foreign wlogout # Logout menu for wayland
AddPackage --foreign swww # Efficient animated wallpaper daemon for wayland, controlled at runtime.
AddPackage --foreign brillo # Control the brightness of backlight and keyboard LED devices
AddPackage --foreign warpd-git # A modal keyboard driven interface for mouse manipulation.

AddPackage mako # Lightweight notification daemon for Wayland
AddPackage cliphist # wayland clipboard manager
AddPackage wofi # launcher for wlroots-based wayland compositors
AddPackage network-manager-applet # Applet for managing network connections
AddPackage gammastep # Adjust the color temperature of your screen according to your surroundings.
AddPackage python-pywal # Generate and change colorschemes on the fly
AddPackage wev # A tool for debugging wayland events on a Wayland window, analagous to the X11 tool xev

AddPackage --foreign bibata-cursor-theme-bin # Material Based Cursor Theme
AddPackage --foreign numix-icon-theme-git # Base icon theme from the Numix project

# ----------- Manual Dependencies ----------------------------------------------
# hyprpm
AddPackage cmake # A cross-platform open-source make system
AddPackage cpio # A tool to copy files into or out of a cpio or tar archive
AddPackage meson # High productivity build system
# from hyprcursor dependency
SetFileProperty /usr/include/hyprcursor mode 777
# gammastep / gammastep-indicator
AddPackage python-gobject # Python bindings for GLib/GObject/GIO/GTK
# neovim plugins
AddPackage rustup # The Rust toolchain installer
AddPackage npm # A package manager for JavaScript
# mise watch
AddPackage watchexec # Executes commands in response to file modifications


# =========== Config Files =====================================================

# boot loader (755 because FAT does not support file permissions)
CopyFile /boot/EFI/refind/refind.conf 755
CopyFileTo /boot/refind_linux.conf."$HOSTNAME" /boot/refind_linux.conf 755

# system
CopyFile /etc/sudoers
CopyFile /etc/systemd/zram-generator.conf
CopyFile /etc/sysctl.d/99-vm-zram-parameters.conf
CopyFile /etc/locale.conf
CopyFile /etc/locale.gen
CopyFile /etc/environment

# networking
CopyFile /etc/systemd/timesyncd.conf
CreateLink /etc/localtime /usr/share/zoneinfo/Europe/Berlin

# GUI
CopyFile /etc/greetd/config.toml

# pacman config
CopyFile /etc/pacman.conf
CopyFile /etc/pacman.d/hooks/refind.hook
CopyFile /etc/xdg/reflector/reflector.conf

# crontabs
# NOTE: need to run `crontab -e` as user once and save for correct modes
CopyFile /var/spool/cron/rene 600 rene rene
CopyFile /var/spool/cron/root 600

# =========== Inline Edits =====================================================
f="$(GetPackageOriginalFile openssh /etc/ssh/sshd_config)"
sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' "$f"

# prevent yay from installing <appname>-debug packages alongside base packages
f="$(GetPackageOriginalFile pacman /etc/makepkg.conf)"
sed -i '/^OPTIONS/s/debug/!debug/' "$f"

# custom initramfs image hooks
f="$(GetPackageOriginalFile mkinitcpio /etc/mkinitcpio.conf)"
HOOKS="(base udev autodetect microcode modconf kms keyboard keymap block zfs filesystems)"
sed -i "s/^HOOKS=.*/HOOKS=${HOOKS}/" "$f"
sed -i 's/^MODULES=.*/MODULES=(zfs)/' "$f"

# =========== Services =========================================================

# multi-user target services
CreateLink /etc/systemd/system/multi-user.target.wants/NetworkManager.service /usr/lib/systemd/system/NetworkManager.service
CreateLink /etc/systemd/system/multi-user.target.wants/cronie.service /usr/lib/systemd/system/cronie.service
CreateLink /etc/systemd/system/multi-user.target.wants/remote-fs.target /usr/lib/systemd/system/remote-fs.target
CreateLink /etc/systemd/system/multi-user.target.wants/sshd.service /usr/lib/systemd/system/sshd.service
CreateLink /etc/systemd/system/multi-user.target.wants/zfs.target /usr/lib/systemd/system/zfs.target

# zfs services
CreateLink /etc/systemd/system/zed.service /usr/lib/systemd/system/zfs-zed.service
CreateLink /etc/systemd/system/zfs-import.target.wants/zfs-import-cache.service /usr/lib/systemd/system/zfs-import-cache.service
CreateLink /etc/systemd/system/zfs.target.wants/zfs-import.target /usr/lib/systemd/system/zfs-import.target
CreateLink /etc/systemd/system/zfs.target.wants/zfs-mount.service /usr/lib/systemd/system/zfs-mount.service
CreateLink /etc/systemd/system/zfs.target.wants/zfs-zed.service /usr/lib/systemd/system/zfs-zed.service

# networking services
CreateLink /etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service /usr/lib/systemd/system/NetworkManager-dispatcher.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.resolve1.service /usr/lib/systemd/system/systemd-resolved.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.timesync1.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateLink /etc/systemd/system/network-online.target.wants/NetworkManager-wait-online.service /usr/lib/systemd/system/NetworkManager-wait-online.service
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-resolved.service /usr/lib/systemd/system/systemd-resolved.service
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service /usr/lib/systemd/system/systemd-timesyncd.service

# system stuff
CreateLink /etc/systemd/system/getty.target.wants/getty@tty1.service /usr/lib/systemd/system/getty@.service
CreateLink /etc/systemd/system/sockets.target.wants/systemd-userdbd.socket /usr/lib/systemd/system/systemd-userdbd.socket
CreateLink /etc/systemd/system/display-manager.service /usr/lib/systemd/system/greetd.service
CreateLink /etc/systemd/system/timers.target.wants/reflector.timer /usr/lib/systemd/system/reflector.timer

# user stuff
CreateLink /etc/systemd/user/sockets.target.wants/p11-kit-server.socket /usr/lib/systemd/user/p11-kit-server.socket
CreateLink /etc/systemd/user/sockets.target.wants/gcr-ssh-agent.socket /usr/lib/systemd/user/gcr-ssh-agent.socket

# multimedia
CreateLink /etc/systemd/system/bluetooth.target.wants/bluetooth.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.bluez.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/pipewire.service.wants/wireplumber.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/sockets.target.wants/pipewire-pulse.socket /usr/lib/systemd/user/pipewire-pulse.socket
CreateLink /etc/systemd/user/sockets.target.wants/pipewire.socket /usr/lib/systemd/user/pipewire.socket
