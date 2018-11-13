# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

KAG_PATH="/usr/share/kag"
DESCRIPTION="2D MMORPG about mining resources, building castles and destroying your enemies"
HOMEPAGE="https://www.kag2d.com/en/"
KEYWORDS="~amd64"
LICENSE="EULA"
SLOT="0"
SRC_URI="http://dl.kag2d.com/kag-linux32-client-release.tar.gz -> ${P}.tgz"

src_install()
{
	dodir /usr/share/kag
	cp -R "${WORKDIR}/App" ${KAG_PATH}
	cp -R "${WORKDIR}/Base" ${KAG_PATH}
	cp -R "${WORKDIR}/Docs" ${KAG_PATH}
	cp -R "${WORKDIR}/lib" ${KAG_PATH}
	cp -R "${WORKDIR}/Manual" ${KAG_PATH}
	cp -R "${WORKDIR}/Mods" ${KAG_PATH}
	cp -R "${WORKDIR}/Security" ${KAG_PATH}
	cp "${WORKDIR}/autoupdate_ignore_custom.cfg" ${KAG_PATH}
	cp "${WORKDIR}/autoupdate_ignore.cfg" ${KAG_PATH}
	cp "${WORKDIR}/curl-ca-bundle.crt" ${KAG_PATH}
	cp "${WORKDIR}/curl-license.txt" ${KAG_PATH}
	cp "${WORKDIR}/forceupdate.sh" ${KAG_PATH}
	cp "${WORKDIR}/irrlicht.ico" ${KAG_PATH}
	cp "${WORKDIR}/KAG" ${KAG_PATH}
	cp "${WORKDIR}/libJuxta.so" ${KAG_PATH}
	cp "${WORKDIR}/mods.cfg" ${KAG_PATH}
	cp "${WORKDIR}/nolauncher.sh" ${KAG_PATH}
	cp "${WORKDIR}/readme.txt" ${KAG_PATH}
	cp "${WORKDIR}/rungame.sh" ${KAG_PATH}
	cp "${WORKDIR}/runlocalhost.sh" ${KAG_PATH}
	cp "${WORKDIR}/steam_appid.txt" ${KAG_PATH}
	cp "${WORKDIR}/terms.txt" ${KAG_PATH}
	ln -sf "/usr/share/kag/rungame.sh" "/usr/bin/kag"
	make_desktop_entry make_desktop_entry("kag","KAG","/usr/share/kag/KAG.ico","Game","Comment='2D MMORPG about mining resources, building castles and destroying your enemies'")
}
