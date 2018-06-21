# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Optional addons to wmutils"
HOMEPAGE="https://github.com/wmutils/opt"
SRC_URI="https://github.com/wmutils/opt/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="x11-libs/libxcb"
RDEPEND="${DEPEND}"

S="${WORKDIR}/opt-${PV}"

src_prepare() {
	default

	sed -e 's/\ -Os//' -i config.mk || die
}
