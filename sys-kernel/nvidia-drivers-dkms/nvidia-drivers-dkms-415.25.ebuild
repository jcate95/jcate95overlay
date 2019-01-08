# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

NV_URI="http://us.download.nvidia.com/XFree86/"
AMD64_NV_PACKAGE="NVIDIA-Linux-x86_64-${PV}"

DESCRIPTION="NVIDIA driver sources for linux"
HOMEPAGE="http://www.nvidia.com/"
SRC_URI="amd64? ( ${NV_URI}Linux-x86_64/${PV}/${AMD64_NV_PACKAGE}.run https://git.archlinux.org/svntogit/packages.git/plain/trunk/kernel-4.16.patch?h=packages/nvidia )"

LICENSE="GPL-2 NVIDIA-r2"
SLOT="0/${PV}"
KEYWORDS="amd64"
IUSE=""

DEPEND="sys-kernel/dkms"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${AMD64_NV_PACKAGE}"

src_unpack() {
	sh ${DISTDIR}/${AMD64_NV_PACKAGE}.run --extract-only
}

src_prepare() {
	cd ${DISTDIR}/${AMD64_NV_PACKAGE}
	epatch ${DISTDIR}/nvidia
	cd kernel
	sed -i 's/__VERSION_STRING/${PV}/' dkms.conf
	sed -i 's/__JOBS/`nproc`/' dkms.conf
	sed -i 's/__DKMS_MODULES//' dkms.conf
	sed -i '$iBUILT_MODULE_NAME[0]="nvidia"\
DEST_MODULE_LOCATION[0]="/kernel/drivers/video"\
BUILT_MODULE_NAME[1]="nvidia-uvm"\
DEST_MODULE_LOCATION[1]="/kernel/drivers/video"\
BUILT_MODULE_NAME[2]="nvidia-drm"\
DEST_MODULE_LOCATION[2]="/kernel/drivers/video"' dkms.conf
sed -i 's/NV_EXCLUDE_BUILD_MODULES/IGNORE_PREEMPT_RT_PRESENCE=1 NV_EXCLUDE_BUILD_MODULES/' dkms.conf
}

src_install() {
	dodir usr/src/${P}
	insinto usr/src/${P}
	doins -r "${S}"/kernel/*
}

pkg_postinst() {
	dkms add ${PN}/${PV}
}

pkg_prerm() {
	dkms remove ${PN}/${PV} --all
}

