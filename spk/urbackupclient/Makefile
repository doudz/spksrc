SPK_NAME = urbackupclient
SPK_VERS = 2.4.11
SPK_REV = 1
SPK_ICON = src/urbackup.png
DSM_UI_DIR = app

DEPENDS = cross/urbackup-client

# see cross/cryptopp
UNSUPPORTED_ARCHS = powerpc ppc824x ppc853x ppc854

MAINTAINER = sramage
DESCRIPTION = UrBackup is an easy to setup Open Source client/server backup system, that through a combination of image and file backups accomplishes both data safety and a fast restoration time.
RELOAD_UI = yes
DISPLAY_NAME = UrBackup Client
CHANGELOG = "Initial package release with client"

HOMEPAGE = https://www.urbackup.org/
LICENSE  = AGPL-3.0

CONF_DIR = src/conf

# 'auto' reserved value grabs SPK_NAME
SERVICE_USER         = auto
SERVICE_SETUP        = src/service-setup.sh
STARTABLE            = yes

SERVICE_COMMAND = $${SYNOPKG_PKGDEST}/sbin/urbackupclientbackend -d -r server-confirms -v error --pidfile $${PID_FILE} --logfile $${LOG_FILE}

SPK_COMMANDS = bin/blockalign bin/urbackupclientctl sbin/urbackupclientbackend

include ../../mk/spksrc.spk.mk
