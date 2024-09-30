# =========== Applications =====================================================

# ----------- System Tools -----------------------------------------------------
AddPackage stress    # A tool that stress tests your system (CPU, memory, I/O, disks)
AddPackage dmidecode # Desktop Management Interface table related utilities
AddPackage udiskie   # Removable disk automounter using udisks
AddPackage gparted   # A Partition Magic clone, frontend to GNU Parted
AddPackage mtools    # A collection of utilities to access MS-DOS disks
AddPackage ntfs-3g   # NTFS filesystem driver and utilities
AddPackage ncdu      # Disk usage analyzer with an ncurses interface
AddPackage nautilus  # Default file manager for GNOME
AddPackage zip       # Compressor/archiver for creating and modifying zipfiles

AddPackage wavemon # Ncurses-based monitoring application for wireless network devices
AddPackage ipcalc  # Calculates IP broadcast, network, Cisco wildcard mask, and host ranges
AddPackage ldns    # Fast DNS library supporting recent RFCs
AddPackage mtr     # Combines the functionality of traceroute and ping into one tool (CLI version)
AddPackage sipcalc # an advanced console based ip subnet calculator.
AddPackage whois   # Intelligent WHOIS client

# ----------- Firmware Updates--------------------------------------------------
# https://github.com/fwupd/fwupd/wiki/PluginFlag:esp-not-found
AddPackage fwupd   # Simple daemon to allow session software to update firmware
AddPackage udisks2 # Daemon, tools and libraries to access and manipulate disks, storage devices and technologies

# ----------- Browser ----------------------------------------------------------
AddPackage firefox  # Standalone web browser from mozilla.org
AddPackage chromium # A web browser built for speed, simplicity, and security

# ----------- Keyboard ---------------------------------------------------------
AddPackage qmk # CLI tool for customizing supported mechanical keyboards.
CopyFile /etc/udev/rules.d/50-qmk.rules

AddPackage fcitx5                # Next generation of fcitx
AddPackage fcitx5-configtool     # Configuration Tool for Fcitx5
AddPackage fcitx5-gtk            # Fcitx5 gtk im module and glib based dbus client library
AddPackage fcitx5-material-color # Material color theme for fcitx5
AddPackage fcitx5-nord           # Fcitx5 theme based on Nord color
AddPackage fcitx5-qt             # Fcitx5 Qt Library (Qt5 & Qt6 integrations)
AddPackage fcitx5-rime           # RIME support for Fcitx5

# ----------- Programming ------------------------------------------------------
AddPackage go          # Core compiler tools for the Go programming language
AddPackage python      # The Python programming language
AddPackage python-pipx # Install and Run Python Applications in Isolated Environments
AddPackage ipython     # Enhanced Interactive Python shell
AddPackage jq          # Command-line JSON processor
AddPackage go-yq       # Portable command-line YAML processor
AddPackage jless       # A command-line pager for JSON data
AddPackage prettier    # An opinionated code formatter
AddPackage shellcheck  # Shell script analysis tool
AddPackage tokei       # A blazingly fast CLOC (Count Lines Of Code) program
AddPackage gitui       # Blazing fast terminal-ui for git written in Rust
AddPackage tig         # Text-mode interface for Git.
AddPackage httpie      # human-friendly CLI HTTP client for the API era

AddPackage --foreign visual-studio-code-bin # Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version)
CopyFile /usr/share/applications/code-wayland.desktop

AddPackage --foreign aws-cli-v2       # Unified command line interface for Amazon Web Services (version 2)
AddPackage azure-cli                  # Command-line tools for Azure.
AddPackage --foreign google-cloud-cli # A set of command-line tools for the Google Cloud Platform. Includes gcloud (with beta and alpha commands), gsutil, and bq.
AddPackage hcloud                     # CLI for Hetzner Cloud

AddPackage minikube                  # A tool that makes it easy to run Kubernetes locally
AddPackage --foreign rancher-k3d-bin # Little helper to run Rancher Labs k3s in Docker
AddPackage --foreign kubeswitch-bin  # The kubectx for operators.

AddPackage sops # Editor of encrypted files that supports YAML, JSON and BINARY formats
AddPackage helm # The Kubernetes Package Manager

# ----------- Gaming -----------------------------------------------------------
AddPackage steam # Valve's digital software delivery system
# steam dependency: xdg-user-dirs, local config in ~/.config/user-dirs.dirs
CreateLink /etc/systemd/user/default.target.wants/xdg-user-dirs-update.service /usr/lib/systemd/user/xdg-user-dirs-update.service

# ----------- Multimedia -------------------------------------------------------
AddPackage mpd       # Flexible, powerful, server-side application for playing music
AddPackage mpc       # Minimalist command line interface to MPD
AddPackage ncmpcpp   # Almost exact clone of ncmpc with some new features
AddPackage mpv       # a free, open source, and cross-platform media player
AddPackage mpv-mpris # MPRIS plugin for mpv
AddPackage ncspot    # Cross-platform ncurses Spotify client written in Rust, inspired by ncmpc and the likes.
AddPackage ytfzf     # A POSIX script to find and watch youtube videos from the terminal
AddPackage yt-dlp    # A youtube-dl fork with additional features and fixes

AddPackage helvum          # GTK patchbay for PipeWire
AddPackage easyeffects     # Audio Effects for Pipewire applications
AddPackage element         # A modular LV2/VST3 audio plugin host
AddPackage lsp-plugins-lv2 # Collection of open-source plugins - LV2

AddPackage musescore # Create, play and print beautiful sheet music

AddPackage grim  # Screenshot utility for Wayland
AddPackage slurp # Select a region in a Wayland compositor

AddPackage cameractrls # Camera controls for Linux
AddPackage guvcview    # Simple GTK+ interface for capturing and viewing video from v4l2 devices

AddPackage eog      # Eye of Gnome: An image viewing and cataloging program
AddPackage gimp     # GNU Image Manipulation Program
AddPackage inkscape # Professional vector graphics editor

AddPackage libreoffice-fresh  # LibreOffice branch which contains new features and program enhancements
AddPackage mupdf              # Lightweight PDF and XPS viewer
AddPackage --foreign qpdfview # A tabbed PDF viewer using the poppler library
AddPackage pdfarranger        # Helps merge or split PDF documents and rotate, crop and rearrange pages
AddPackage diffpdf            # Diffing pdf files visually or textually

# installed as group extra/texlive
AddPackage texlive-basic            # TeX Live - Essential programs and files
AddPackage texlive-bibtexextra      # TeX Live - BibTeX additional styles
AddPackage texlive-binextra         # TeX Live - TeX auxiliary programs
AddPackage texlive-context          # TeX Live - ConTeXt and packages
AddPackage texlive-fontsextra       # TeX Live - Additional fonts
AddPackage texlive-fontsrecommended # TeX Live - Recommended fonts
AddPackage texlive-fontutils        # TeX Live - Graphics and font utilities
AddPackage texlive-formatsextra     # TeX Live - Additional formats
AddPackage texlive-games            # TeX Live - Games typesetting
AddPackage texlive-humanities       # TeX Live - Humanities packages
AddPackage texlive-latex            # TeX Live - LaTeX fundamental packages
AddPackage texlive-latexextra       # TeX Live - LaTeX additional packages
AddPackage texlive-latexrecommended # TeX Live - LaTeX recommended packages
AddPackage texlive-luatex           # TeX Live - LuaTeX packages
AddPackage texlive-mathscience      # TeX Live - Mathematics, natural sciences, computer science packages
AddPackage texlive-metapost         # TeX Live - MetaPost and Metafont packages
AddPackage texlive-music            # TeX Live - Music packages
AddPackage texlive-pictures         # TeX Live - Graphics, pictures, diagrams
AddPackage texlive-plaingeneric     # TeX Live - Plain (La)TeX packages
AddPackage texlive-pstricks         # TeX Live - PSTricks
AddPackage texlive-publishers       # TeX Live - Publisher styles, theses, etc.
AddPackage texlive-xetex            # TeX Live - XeTeX and packages
IgnorePath '/etc/texmf/*'
IgnorePath '/var/lib/texmf'
IgnorePath '/usr/share/texmf-dist'

AddPackage biber # A Unicode-capable BibTeX replacement for biblatex users

# ----------- Print & Scan -----------------------------------------------------
AddPackage cups                          # OpenPrinting CUPS - daemon package
AddPackage simple-scan                   # Simple scanning utility
AddPackage --foreign brother-mfc-l2750dw # LPR and CUPS driver for the Brother MFC-l2750DW
AddPackage --foreign brscan5             # SANE drivers from Brother for compatible models

CreateLink /etc/systemd/system/sockets.target.wants/cups.socket /usr/lib/systemd/system/cups.socket

IgnorePath '/etc/opt/brother/scanner/brscan5/brsanenetdevice.cfg'
IgnorePath '/etc/cups/*'
IgnorePath '/var/spool/cups'
IgnorePath '/etc/printcap'
IgnorePath '/etc/colord'
IgnorePath '/var/lib/colord'
IgnorePath '/etc/sane.d/*'

# ----------- Communication ----------------------------------------------------
AddPackage --foreign slack-desktop # Slack Desktop (Beta) for Linux
AddPackage thunderbird             # Standalone mail and news reader from mozilla.org
AddPackage --foreign zoom          # Video Conferencing and Web Conferencing Service

# ----------- Security ---------------------------------------------------------
AddPackage keepass   # Easy-to-use password manager for Windows, Linux, Mac OS X and mobile devices
AddPackage keepassxc # Cross-platform community-driven port of Keepass password manager

IgnorePath '/usr/share/.mono'
IgnorePath '/usr/share/keepass'

# ----------- Backup -----------------------------------------------------------
AddPackage --foreign sanoid # Policy-driven snapshot management (sanoid), dataset sending/receiving (syncoid) and snapshot searching (findoid) tools for ZFS.
CopyFile /etc/sanoid/sanoid.conf
CreateLink /etc/systemd/system/timers.target.wants/sanoid.timer /usr/lib/systemd/system/sanoid.timer
# sanoid/syncoid dependencies
AddPackage lzop    # File compressor using lzo lib
AddPackage mbuffer # A tool for buffering data streams
AddPackage pv      # A terminal-based tool for monitoring the progress of data through a pipeline

AddPackage android-file-transfer # Android MTP client with minimalistic UI

# ----------- Virtualization ---------------------------------------------------
AddPackage virtualbox           # Powerful x86 virtualization for enterprise as well as home use
AddPackage virtualbox-host-dkms # VirtualBox Host kernel modules sources
AddPackage libvirt              # API for controlling virtualization engines (openvz,kvm,qemu,virtualbox,xen,etc)
IgnorePath '/var/lib/libvirt/swtpm'
IgnorePath '/var/lib/dkms/vboxhost'

AddPackage podman  # Tool and library for running OCI-based containers in pods
AddPackage buildah # A tool which facilitates building OCI images

cat >>"$(GetPackageOriginalFile containers-common /etc/containers/registries.conf)" <<-EOF
	unqualified-search-registries = ["docker.io"]
EOF

IgnorePath '/var/lib/containerd'
IgnorePath '/var/lib/cni/networks'
IgnorePath '/etc/cni/net.d'

AddPackage docker        # Pack, ship and run any application as a lightweight container
AddPackage docker-buildx # Docker CLI plugin for extended build capabilities with BuildKit
CreateLink /etc/systemd/system/multi-user.target.wants/docker.service /usr/lib/systemd/system/docker.service
IgnorePath /etc/containers/networks
IgnorePath /opt/containerd/bin 711
IgnorePath /opt/containerd/lib 711
