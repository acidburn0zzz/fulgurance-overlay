# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Experimental open-source emulator for the Nintendo Switch"
HOMEPAGE="https://yuzu-emu.org/"
EGIT_REPO_URI="https://github.com/yuzu-emu/${PN}.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="media-libs/libsdl2
        dev-qt/qtcore
        dev-qt/qtopengl
        >=sys-devel/gcc-7.1.0
        dev-util/cmake
        dev-lang/python"

src_install() {
    dobin yuzu
}
