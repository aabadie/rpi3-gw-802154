do_install () {
    install -m 0755 ${WORKDIR}/25-default.network ${D}${sysconfdir}/systemd/25-default.network
}
