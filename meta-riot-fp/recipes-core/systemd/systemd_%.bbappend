SRC_URI_append = file://25-default.network

do_install () {
    install -m 0755 ${WORKDIR}/25-default.network ${D}${sysconfdir}/systemd/25-default.network
}
