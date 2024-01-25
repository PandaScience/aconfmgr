# =========== Applications =====================================================

# ----------- System Tools -----------------------------------------------------
AddPackage stress # A tool that stress tests your system (CPU, memory, I/O, disks)

# ----------- Firmware Updates--------------------------------------------------
# https://github.com/fwupd/fwupd/wiki/PluginFlag:esp-not-found
AddPackage fwupd # Simple daemon to allow session software to update firmware
AddPackage udisks2 # Daemon, tools and libraries to access and manipulate disks, storage devices and technologies

# ----------- Browser ----------------------------------------------------------
AddPackage firefox # Standalone web browser from mozilla.org
AddPackage chromium # A web browser built for speed, simplicity, and security

# ----------- Programming ------------------------------------------------------
AddPackage go # Core compiler tools for the Go programming language
AddPackage python # The Python programming language
AddPackage jq # Command-line JSON processor
AddPackage prettier # An opinionated code formatter
AddPackage --foreign visual-studio-code-bin # Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version)

# ----------- Multimedia -------------------------------------------------------
AddPackage eog # Eye of Gnome: An image viewing and cataloging program

# ----------- Communication ----------------------------------------------------
AddPackage --foreign slack-desktop # Slack Desktop (Beta) for Linux
