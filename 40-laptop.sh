if [[ "$(hostnamectl hostname)" == "framework" ]]; then

	cat >>"$(GetPackageOriginalFile systemd /etc/systemd/logind.conf)" <<-EOF
		HandlePowerKey=ignore
		HandlePowerKeyLongPress=poweroff
	EOF

	# https://wiki.archlinux.org/title/Framework_Laptop_13#WiFi_performance_on_AMD_edition
	# https://wiki.archlinux.org/title/Network_configuration/Wireless#Respecting_the_regulatory_domain
	AddPackage wireless-regdb # Central Regulatory Domain Database
	cat >>"$(GetPackageOriginalFile wireless-regdb /etc/conf.d/wireless-regdom)" <<-EOF
		WIRELESS_REGDOM="DE"
	EOF

	AddPackage --foreign framework-system-git # Tool to interact with the framework system (git development version)
	AddPackage --foreign fw-ectool-git        # ectool for the Framework laptop.

	AddPackage vulkan-radeon       # Open-source Vulkan driver for AMD GPUs
	AddPackage lib32-vulkan-radeon # Open-source Vulkan driver for AMD GPUs - 32-bit
	AddPackage vulkan-tools        # Vulkan Utilities and Tools
	AddPackage mesa-utils          # Essential Mesa utilities

	AddPackage power-profiles-daemon # Makes power profiles handling available over D-Bus
	CreateDir /var/lib/power-profiles-daemon

	AddPackage signal-desktop # Signal Private Messenger for Linux
fi

if [[ "$ACONFMGR_SCIENCE" == "true" ]]; then
	# physics
	AddPackage python-pandas   # High-performance, easy-to-use data structures and data analysis tools for Python
	AddPackage python-sympy    # Symbolic manipulation package (Computer Algebra System), written in pure Python
	AddPackage tk              # A windowing toolkit for use with tcl
	AddPackage --foreign libxc # A library of exchange-correlation functionals for density-functional theory
	AddPackage --foreign vesta # Visualization for Electronic and STructural Analysis

	# required by VESTA
	AddPackage jdk-openjdk # OpenJDK Java 22 development kit
	CreateLink /usr/lib/jvm/default java-23-openjdk
	CreateLink /usr/lib/jvm/default-runtime java-23-openjdk
fi
