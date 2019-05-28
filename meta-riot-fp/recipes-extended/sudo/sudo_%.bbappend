do_install_append () {
    echo "riot ALL= NOPASSWD: ALL" >> ${D}${sysconfdir}/sudoers.d/www-data
}

