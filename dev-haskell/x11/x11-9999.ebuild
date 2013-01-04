# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.13

EAPI=5

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal git-2 autotools

DESCRIPTION="A binding to the X11 graphics library"
HOMEPAGE="https://github.com/haskell-pkg-janitors/X11"
SRC_URI=""
EGIT_REPO_URI="https://github.com/haskell-pkg-janitors/X11.git"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="xinerama"

RDEPEND="dev-haskell/syb[profile?]
		>=dev-lang/ghc-6.10.4:=
		x11-libs/libX11
		x11-libs/libXext
		x11-libs/libXrandr
		xinerama? ( x11-libs/libXinerama )"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

src_prepare() {
	eautoreconf
}

src_configure() {
	cabal_src_configure --configure-option=$(use_with xinerama)
}
