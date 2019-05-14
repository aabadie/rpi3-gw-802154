do_deploy_append() {
	echo "dtoverlay=at86rf233" >  >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
}
