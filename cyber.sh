cd /tmp
wget --no-check-certificate https://lobster01.rmgruppe.de/cy/cybereason-sensor-23.1.365.0-1.x86_64_daken_daken-r.cybereason.net_443_ACTIVE_NORMAL_deb.deb
wget --no-check-certificate https://lobster01.rmgruppe.de/cy/Online_Debian_Check_install_dependencies/dependencies.txt
wget --no-check-certificate https://lobster01.rmgruppe.de/cy/Online_Debian_Check_install_dependencies/install_dependencies.sh
wget --no-check-certificate https://lobster01.rmgruppe.de/cy/Online_Debian_Check_install_dependencies/README.txt
chmod +x install_dependencies.sh
./install_dependencies.sh -i dependencies.txt
dpkg -i cybereason-sensor-23.1.365.0-1.x86_64_daken_daken-r.cybereason.net_443_ACTIVE_NORMAL_deb.deb
