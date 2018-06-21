# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A quick hack to display an image in a non-wm-managed window"
HOMEPAGE="https://github.com/sdhand/n30f"
SRC_URI="https://github.com/sdhand/n30f/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="x11-libs/cairo
	x11-libs/libxcb
"
RDEPEND="${DEPEND}"
