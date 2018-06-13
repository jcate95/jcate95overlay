# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{3_5,3_6} )

inherit distutils-r1 git-r3

DESCRIPTION="Generate and change colorschemes on the fly. A 'wal' rewrite in Python 3."
HOMEPAGE="https://github.com/dylanaraps/pywal"
SRC_URI=""
EGIT_REPO_URI="https://github.com/dylanaraps/pywal"
EGIT_BRANCH="master"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="?jpeg ?png ?tiff"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	jpeg? media-libs/imlib2
	media-gfx/imagemagick"
