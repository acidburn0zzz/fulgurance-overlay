# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit udev
DESCRIPTION="Control backlight of MSI laptop keyboards"
HOMEPAGE="https://github.com/makkarpov/msi-keyboard"
KEYWORDS="~amd64"
LICENSE="GPL-3"
SLOT="0"
COMMON_DEPEND="dev-libs/hidapi"
SRC_URI="https://github.com/makkarpov/msi-keyboard/archive/v${PV}.tar.gz -> ${P}.tar.gz"
src_install()
{
	udev_dorules 99-msi-keyboard.rules
	dobin msi-keyboard
}
