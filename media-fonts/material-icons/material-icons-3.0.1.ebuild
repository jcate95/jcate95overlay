# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Copied from szorfein/ninjatools
# https://github.com/szorfein/ninjatools/blob/master/media-fonts/material-icons/material-icons-3.0.1.ebuild
EAPI=6
MATERIAL="material-design-icons"

inherit font

DESCRIPTION="ttf font from Material design icons by google"
HOMEPAGE="https://github.com/google/material-design-icons"
SRC_URI="https://github.com/google/${MATERIAL}/releases/download/${PV}/${MATERIAL}-${PV}.zip -> ${P}.zip"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MATERIAL}-${PV}/iconfont"
FONT_SUFFIX="ttf"
