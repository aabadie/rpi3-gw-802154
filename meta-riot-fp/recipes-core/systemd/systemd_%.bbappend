# Enable DHCP on eth0 + IPv4 and IPv6

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:" 

SRC_URI += "file://25-default.network" 

do_install_append() { 
    install -m 644 ${WORKDIR}/25-default.network ${D}${sysconfdir}/systemd/network
}

