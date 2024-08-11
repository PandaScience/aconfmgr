# =========== Base System ====================================================

IgnorePath '/boot/EFI/refind/icons'
IgnorePath '/boot/EFI/refind/icons-backup'
IgnorePath '/boot/EFI/refind/themes'
IgnorePath '/boot/EFI/refind/keys'
IgnorePath '/boot/EFI/refind/refind.conf-sample'
IgnorePath '/boot/EFI/refind/BOOT.CSV'
IgnorePath '/boot/EFI/refind/refind_x64.efi'
IgnorePath '/boot/EFI/refind/vars/PreviousBoot'
IgnorePath '/boot/EFI/tools'
IgnorePath '/boot/amd-ucode.img'
IgnorePath '/boot/initramfs-linux-fallback.img'
IgnorePath '/boot/initramfs-linux.img'
IgnorePath '/boot/vmlinuz-linux'

IgnorePath '/etc/.updated'
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/adjtime'

IgnorePath '/etc/ca-certificates/*'
IgnorePath '/etc/fonts'
IgnorePath '/etc/ssl/certs'
IgnorePath '/etc/pacman.d/gnupg'
IgnorePath '/etc/openvpn/client'
IgnorePath '/etc/openvpn/server'
IgnorePath '/etc/exports.d/zfs.exports.lock'
IgnorePath '/etc/vconsole.conf'

IgnorePath '/var/.updated'
IgnorePath '/var/log'
IgnorePath '/var/log/journal'
IgnorePath '/var/tmp'
IgnorePath '/var/db/sudo/lectured'
IgnorePath '/var/spool/anacron'
IgnorePath '/var/lib/fwupd'
IgnorePath '/var/lib/passim'
IgnorePath '/var/lib/passim/data'
IgnorePath '/var/lib/bluetooth'
IgnorePath '/var/lib/blueman/network.state'
IgnorePath '/var/lib/upower'
IgnorePath '/var/lib/geoclue'
IgnorePath '/var/lib/pacman/local'  # package metadata
IgnorePath '/var/lib/pacman/sync/*' # repos
IgnorePath '/var/lib/NetworkManager'
IgnorePath '/var/lib/containers'
IgnorePath '/var/lib/dbus/machine-id'
IgnorePath '/var/lib/dkms/mok.*'
IgnorePath '/var/lib/flatpak'
IgnorePath '/var/lib/machines'
IgnorePath '/var/lib/mpd'
IgnorePath '/var/lib/portables'
IgnorePath '/var/lib/private'
IgnorePath '/var/lib/systemd/catalog/database'
IgnorePath '/var/lib/systemd/coredump'
IgnorePath '/var/lib/systemd/ephemeral-trees'
IgnorePath '/var/lib/systemd/linger'
IgnorePath '/var/lib/systemd/pstore'
IgnorePath '/var/lib/systemd/random-seed'
IgnorePath '/var/lib/systemd/timers'
IgnorePath '/var/lib/systemd/backlight'
IgnorePath '/var/lib/systemd/rfkill'
IgnorePath '/var/lib/systemd/timesync/clock'
IgnorePath '/var/lib/tpm2-tss/system/keystore'
IgnorePath '/var/lib/mlocate/mlocate.db'
IgnorePath '/var/lib/docker'
IgnorePath '/var/lib/lastlog'
IgnorePath '/var/lib/libuuid'

IgnorePath '/usr/lib/modules'
IgnorePath '/usr/lib/locale/locale-archive'
IgnorePath '/usr/lib/udev/hwdb.bin'
IgnorePath '/usr/share/info/dir'
IgnorePath '/usr/share/mime'
IgnorePath '/usr/share/icons'
IgnorePath '/usr/share/applications/mimeinfo.cache'
IgnorePath '/usr/share/glib-2.0'
IgnorePath '/usr/share/vim'
IgnorePath '/usr/bin/groupmems'
IgnorePath '/usr/lib/utempter/utempter'
IgnorePath '/usr/lib/gdk-pixbuf-2.0'
IgnorePath '/usr/lib/gio'
IgnorePath '/usr/lib/gtk-2.0'
IgnorePath '/usr/lib/gtk-3.0'
IgnorePath '/usr/lib/gtk-4.0'
IgnorePath "/usr/lib/ghc-*"
IgnorePath '/usr/lib/gconv'
IgnorePath '/usr/lib32/gconv'

IgnorePath '/etc/passwd'
IgnorePath '/etc/passwd-'
IgnorePath '/etc/group'
IgnorePath '/etc/group-'
IgnorePath '/etc/shadow'
IgnorePath '/etc/shadow-'
IgnorePath '/etc/gshadow'
IgnorePath '/etc/gshadow-'
IgnorePath '/etc/subuid'
IgnorePath '/etc/subuid-'
IgnorePath '/etc/subgid'
IgnorePath '/etc/subgid-'
IgnorePath '/etc/fstab'
IgnorePath '/etc/fstab.pacnew'
IgnorePath '/etc/hostid'
IgnorePath '/etc/hostname'
IgnorePath '/etc/hosts'
IgnorePath '/etc/ld.so.cache'
IgnorePath '/etc/machine-id'
IgnorePath '/etc/mkinitcpio.d/linux.preset'
IgnorePath '/etc/os-release'
IgnorePath '/etc/resolv.conf'
IgnorePath '/etc/shells'
IgnorePath '/etc/ssh/ssh_host_*'
IgnorePath '/etc/pacman.d/mirrorlist' # updated by reflector
IgnorePath '/etc/zfs/zpool.cache'

IgnorePath '/etc/NetworkManager/system-connections'
IgnorePath '/etc/iwd'

# zfs mount points
IgnorePath '/opt/k3d'
IgnorePath '/scratch'

# =========== Selective Ignores ================================================

# SLACK_URL in /etc/environment
function EtcEnvironmentFilter() {
	grep -v '^SLACK_URL='
}
AddFileContentFilter '/etc/environment' EtcEnvironmentFilter
