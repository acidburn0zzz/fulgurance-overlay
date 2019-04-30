# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Powerlevel9k theme for ZSH which uses Powerline Fonts."
HOMEPAGE="https://github.com/bhilburn/powerlevel9k"
KEYWORDS="~amd64"
LICENSE="MIT"
SLOT="0"
IUSE="awesome awesome-terminal awesome-terminal-patched nerd powerline"
SRC_URI="https://github.com/bhilburn/powerlevel9k/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RDEPEND="awesome? ( media-fonts/fontawesome )
         awesome-terminal? ( media-fonts/awesome-terminal-fonts )
         nerd? ( media-fonts/nerd-fonts )
         powerline? ( media-fonts/powerline-symbols )"
S="${WORKDIR}"
EXTRACT_DIR="powerlevel9k-${PV}"

src_install()
{
	insinto "/usr/share/zsh-theme-powerlevel9k"
	doins -r {"${EXTRACT_DIR}/debug","${EXTRACT_DIR}/docker","${EXTRACT_DIR}/functions","${EXTRACT_DIR}/shunit2","${EXTRACT_DIR}/test","${EXTRACT_DIR}/test-bsd-vm","${EXTRACT_DIR}/test-vm","${EXTRACT_DIR}/test-vm-providers"}
	doins "${EXTRACT_DIR}/CHANGELOG.md"
	doins "${EXTRACT_DIR}/CODE_OF_CONDUCT.md"
	doins "${EXTRACT_DIR}/LICENSE"
	doins "${EXTRACT_DIR}/powerlevel9k.zsh-theme"
	doins "${EXTRACT_DIR}/prompt_powerlevel9k_setup"
	doins "${EXTRACT_DIR}/README.md"
	doins "${EXTRACT_DIR}/test-in-docker"
	doins "${EXTRACT_DIR}/TESTS.md"
}

pkg_postinst() {
	elog "To use powerlevel9k zsh theme, add 'source \"/usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme\"' to your .zshrc file"
}