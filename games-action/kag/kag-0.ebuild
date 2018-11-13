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
	newbin rungame.sh kag
}
