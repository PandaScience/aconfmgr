if [[ "$(hostnamectl hostname)" == "framework" ]]; then

	cat >> "$(GetPackageOriginalFile systemd /etc/systemd/logind.conf)" <<-EOF
		HandlePowerKey=ignore
		HandlePowerKeyLongPress=poweroff
	EOF

	# https://wiki.archlinux.org/title/Framework_Laptop_13#WiFi_performance_on_AMD_edition
	# https://wiki.archlinux.org/title/Network_configuration/Wireless#Respecting_the_regulatory_domain
	AddPackage wireless-regdb # Central Regulatory Domain Database
	cat >> "$(GetPackageOriginalFile wireless-regdb /etc/conf.d/wireless-regdom)" <<-EOF
		WIRELESS_REGDOM="DE"
	EOF

	AddPackage --foreign framework-system-git # Tool to interact with the framework system (git development version)
fi
