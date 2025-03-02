# Setup environment
PATH="${SYNOPKG_PKGDEST}/bin:${PATH}"

service_postinst ()
{
   	mkdir -p ${SYNOPKG_PKGDEST}/var/urbackup
    mkdir -p ${SYNOPKG_PKGDEST}/var/urbackup/data
    echo "tank/images" > ${SYNOPKG_PKGDEST}/var/urbackup/dataset  
    echo "${SHARE_PATH}" > ${SYNOPKG_PKGDEST}/var/urbackup/backupfolder 
}

service_prestart ()
{
    CONFIG_DIR="${SYNOPKG_PKGDEST}/var"

    # Required: start-stop-daemon do not set environment variables
    HOME=${SYNOPKG_PKGDEST}/var
    export HOME
}
