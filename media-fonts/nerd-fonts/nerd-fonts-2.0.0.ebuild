# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Iconic font aggregator, collection, and patcher."
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts"
KEYWORDS="~amd64"
LICENSE="MIT"
SLOT="0"
https://github.com/ryanoasis/nerd-fonts/archive/v2.0.0.tar.gz
SRC_URI="https://github.com/ryanoasis/nerd-fonts/archive/vv${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}"
EXTRACT_DIR="nerd-fonts-${PV}"

src_install()
{
	insinto "/usr/share/fonts/nerd-fonts"
	doins "${EXTRACT_DIR}/fonts/devicons-regular.ttf"
	doins "${EXTRACT_DIR}/fonts/fontawesome-regular.ttf"
	doins "${EXTRACT_DIR}/fonts/octicons-regular.ttf"
	doins "${EXTRACT_DIR}/fonts/pomicons-regular.ttf"
	doins "${EXTRACT_DIR}/LICENSE"
	doins "${EXTRACT_DIR}/README.md"
	insinto "/etc/fonts/conf.d/"
	doins "${EXTRACT_DIR}/config/10-symbols.conf"
}
