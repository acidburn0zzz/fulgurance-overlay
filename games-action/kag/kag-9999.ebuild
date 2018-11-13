# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="2D MMORPG about mining resources, building castles and destroying your enemies"
HOMEPAGE="https://www.kag2d.com/en/"
KEYWORDS="~amd64"
LICENSE="EULA"
SLOT="0"
SRC_URI="http://dl.kag2d.com/kag-linux32-client-release.tar.gz -> ${P}.tgz"

src_install()
{
	insinto "/usr/share/kag"
	dodir -r "/usr/share/kag"
	doins -r "${WORKDIR}/App"
	doins -r "${WORKDIR}/Base"
	doins -r "${WORKDIR}/Docs"
	doins -r "${WORKDIR}/lib"
	doins -r "${WORKDIR}/Manual"
	doins -r "${WORKDIR}/Mods"
	doins -r "${WORKDIR}/Security"
	doins "${WORKDIR}/autoupdate_ignore_custom.cfg"
	doins "${WORKDIR}/autoupdate_ignore.cfg"
	doins "${WORKDIR}/curl-ca-bundle.crt"
	doins "${WORKDIR}/curl-license.txt"
	doins "${WORKDIR}/forceupdate.sh"
	doins "${WORKDIR}/irrlicht.ico"
	doins "${WORKDIR}/KAG"
	doins "${WORKDIR}/libJuxta.so"
	doins "${WORKDIR}/mods.cfg"
	doins "${WORKDIR}/nolauncher.sh"
	doins "${WORKDIR}/readme.txt"
	doins "${WORKDIR}/rungame.sh"
	doins "${WORKDIR}/runlocalhost.sh"
	doins "${WORKDIR}/steam_appid.txt"
	doins "${WORKDIR}/terms.txt"
	dosym "${KAG_PATH}/rungame.sh" "/usr/bin/kag"
	make_desktop_entry "kag" "KAG" "${KAG_PATH}/KAG.ico" "Game" "Comment='2D MMORPG about mining resources, building castles and destroying your enemies'"
}
