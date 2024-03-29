# =========== Applications =====================================================

# ----------- System Tools -----------------------------------------------------
AddPackage stress # A tool that stress tests your system (CPU, memory, I/O, disks)
AddPackage dmidecode # Desktop Management Interface table related utilities
AddPackage udiskie # Removable disk automounter using udisks
AddPackage wavemon # Ncurses-based monitoring application for wireless network devices

# ----------- Firmware Updates--------------------------------------------------
# https://github.com/fwupd/fwupd/wiki/PluginFlag:esp-not-found
AddPackage fwupd # Simple daemon to allow session software to update firmware
AddPackage udisks2 # Daemon, tools and libraries to access and manipulate disks, storage devices and technologies

# ----------- Browser ----------------------------------------------------------
AddPackage firefox # Standalone web browser from mozilla.org
AddPackage chromium # A web browser built for speed, simplicity, and security

# ----------- Keyboard ---------------------------------------------------------
AddPackage qmk # CLI tool for customizing supported mechanical keyboards.

# ----------- Programming ------------------------------------------------------
AddPackage go # Core compiler tools for the Go programming language
AddPackage python # The Python programming language
AddPackage jq # Command-line JSON processor
AddPackage go-yq # Portable command-line YAML processor
AddPackage jless # A command-line pager for JSON data
AddPackage prettier # An opinionated code formatter
AddPackage shellcheck # Shell script analysis tool
AddPackage tokei # A blazingly fast CLOC (Count Lines Of Code) program
AddPackage --foreign visual-studio-code-bin # Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version)

# ----------- Multimedia -------------------------------------------------------
AddPackage socat # Multipurpose relay - remote control ytfzf with XF86AudioPlay
AddPackage mpc # Minimalist command line interface to MPD
AddPackage mpv # a free, open source, and cross-platform media player
AddPackage yt-dlp # A youtube-dl fork with additional features and fixes
AddPackage ytfzf # A POSIX script to find and watch youtube videos from the terminal

AddPackage helvum # GTK patchbay for PipeWire
AddPackage easyeffects # Audio Effects for Pipewire applications
AddPackage element # A modular LV2/VST3 audio plugin host
AddPackage lsp-plugins-lv2 # Collection of open-source plugins - LV2

AddPackage grim # Screenshot utility for Wayland
AddPackage slurp # Select a region in a Wayland compositor

AddPackage cameractrls # Camera controls for Linux
AddPackage guvcview # Simple GTK+ interface for capturing and viewing video from v4l2 devices

AddPackage eog # Eye of Gnome: An image viewing and cataloging program
AddPackage --foreign qpdfview # A tabbed PDF viewer using the poppler library

# ----------- Print & Scan -----------------------------------------------------
AddPackage cups # OpenPrinting CUPS - daemon package
AddPackage simple-scan # Simple scanning utility
AddPackage --foreign brother-mfc-l2750dw # LPR and CUPS driver for the Brother MFC-l2750DW
AddPackage --foreign brscan4 # SANE drivers from Brother for compatible models

CreateLink /etc/systemd/system/sockets.target.wants/cups.socket /usr/lib/systemd/system/cups.socket

IgnorePath '/opt/brother/scanner/brscan4/brsanenetdevice4.cfg'
IgnorePath '/etc/cups/*'
IgnorePath '/var/spool/cups'
IgnorePath '/etc/printcap'
IgnorePath '/etc/colord'
IgnorePath '/var/lib/colord'
IgnorePath '/etc/sane.d/*'

# ----------- Communication ----------------------------------------------------
AddPackage --foreign slack-desktop # Slack Desktop (Beta) for Linux
AddPackage thunderbird # Standalone mail and news reader from mozilla.org

# ----------- Security ---------------------------------------------------------
AddPackage keepass # Easy-to-use password manager for Windows, Linux, Mac OS X and mobile devices
AddPackage keepassxc # Cross-platform community-driven port of Keepass password manager

IgnorePath '/usr/share/.mono'
IgnorePath '/usr/share/keepass'

# ----------- Backup -----------------------------------------------------------
AddPackage --foreign sanoid # Policy-driven snapshot management (sanoid), dataset sending/receiving (syncoid) and snapshot searching (findoid) tools for ZFS.
CopyFile /etc/sanoid/sanoid.conf
CreateLink /etc/systemd/system/timers.target.wants/sanoid.timer /usr/lib/systemd/system/sanoid.timer

# ----------- Virtualization ---------------------------------------------------
AddPackage virtualbox # Powerful x86 virtualization for enterprise as well as home use
AddPackage virtualbox-host-modules-arch # Virtualbox host kernel modules for Arch Kernel

AddPackage podman # Tool and library for running OCI-based containers in pods
AddPackage buildah # A tool which facilitates building OCI images

cat >> "$(GetPackageOriginalFile containers-common /etc/containers/registries.conf)" <<-EOF
	unqualified-search-registries = ["docker.io"]
EOF

IgnorePath '/var/lib/containerd'
IgnorePath '/var/lib/cni/networks'
IgnorePath '/etc/cni/net.d'
