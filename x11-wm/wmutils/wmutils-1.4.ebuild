# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Set of window manipulation tools"
HOMEPAGE="https://github.com/wmutils/core"
SRC_URI="https://github.com/wmutils/core/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="x11-libs/libxcb"
RDEPEND="${DEPEND}"

S="${WORKDIR}/core-${PV}"

src_prepare() {
	default

	sed -e 's/\/man/\/share\/man/' -i config.mk || die

	sed -e 's/\-Os//' -i config.mk || die
}
