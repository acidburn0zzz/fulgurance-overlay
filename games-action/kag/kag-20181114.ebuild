# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="2D MMORPG about mining resources, building castles and destroying your enemies"
HOMEPAGE="https://www.kag2d.com/en/"
KEYWORDS="~amd64"
LICENSE="EULA"
SLOT="0"
SRC_URI="http://dl.kag2d.com/kag-linux32-client-release.tar.gz -> ${P}.tgz"
S="${WORKDIR}"
QA_PREBUILT="
   opt/kag/libJuxta.so
   opt/kag/KAG
   opt/kag/lib/libIrrKlang.so
   opt/kag/lib/libpng15.so
   opt/kag/lib/libsteam_api.so
"

src_install()
{
        insinto "/opt/kag"
	exeinto "/opt/kag"
	doexe "runlocalhost.sh"
	doexe "rungame.sh"
	doexe "KAG"
        dodir "/opt/kag"
        doins -r "App"
        doins -r "Base"
        doins -r "Docs"
        doins -r "lib"
        doins -r "Manual"
        doins -r "Mods"
        doins -r "Security"
        doins "autoupdate_ignore_custom.cfg"
        doins "autoupdate_ignore.cfg"
        doins "curl-ca-bundle.crt"
        doins "curl-license.txt"
        doins "forceupdate.sh"
        doins "irrlicht.ico"
        doins "KAG"
        doins "libJuxta.so"
        doins "mods.cfg"
        doins "nolauncher.sh"
        doins "readme.txt"
        doins "rungame.sh"
        doins "runlocalhost.sh"
        doins "steam_appid.txt"
        doins "terms.txt"
        dosym "${ED%/}/opt/kag/rungame.sh" "/usr/bin/kag"
        make_desktop_entry "kag" "KAG" "/opt/kag/KAG.ico" "Game"
}
